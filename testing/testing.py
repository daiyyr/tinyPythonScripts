import json
from logging import fatal
from re import T
import boto3
import os
import uuid
import datetime
import requests
import csv
from collections import defaultdict
import traceback
import constants
from gs1 import compress_gs1_digital_link,decompress_gs1_digital_link




def url_2_qr_id(url):
    try:
        url = decompress_gs1_digital_link(url, use_short_text=False)
    except:
        pass
    if url.endswith('/'):
        return url.split('/')[-2]
    return url.split('/')[-1]



def digest_activation_file(activation_file, api_root, token):
    dict_l = []
    try:
        with open(activation_file) as f:
            dict_l = [{k: str(v) for k, v in row.items()}
                for row in csv.DictReader(f, skipinitialspace=True)]
    except:
        print(traceback.format_exc())
        return False, 'Invalid csv file', None, None
    products = defaultdict(list)
    messages = defaultdict(str)
    succeed = True
    i = 1
    mandatory_columns = ['URI', 'PrintTime', 'LotNumber','ManufacturingDate','ExpirationDate','SkuCode','SkuName'] # Based on agreement, "PrintSerialNumber", "CartonID" and "PalletID" may be able to be left blank.
    for line in dict_l:
        i += 1
        if 'PrintSerial' in line and 'PrintSerialNumber' not in line:
            line['PrintSerialNumber'] = line['PrintSerial']
        if i == 2:
            for column in mandatory_columns:
                if column not in line:
                    succeed = False
                    messages[f"Column {column} not exist"] += ""
        SkuCode,SkuName = '',''
        for k,v in line.items():
            if not v and k in mandatory_columns:
                succeed = False
                messages[f"Found {column} blank in following lines: "] += f"{i}, "
            if k == 'SkuCode':
                SkuCode = v
            if k == 'SkuName':
                SkuName = v
        if SkuCode and SkuName:
            products[(SkuCode, SkuName)].append(i)

    url = f'{api_root}/api/products/list'
    hearders = {
        "authorization": f"token {token}",
        "accept": "application/json",
    }
    try:
        response = requests.get(url,headers=hearders)
        response_j = response.json()
    except Exception as e:
        print(traceback.format_exc())
        messages[str(e)] = ''
        return False, messages, None, None
    if 'count' not in response_j or response_j['count'] == 0:
        messages[f'failed to get cloud product list: {response_j}'] = ''
        return False, messages, None, None
    cloud_product_l = response_j['results']
    products_with_cloud_id = defaultdict(list)
    for (SkuCode, SkuName), line_number_list in products.items():
        find_code = False
        name_matched = False
        for p in cloud_product_l:
            if SkuCode in [p['code'], p['gtin']]:
                find_code = True
                if SkuName == p['name']:
                    name_matched = True
                    products_with_cloud_id[(SkuCode, SkuName, p['id'])] = line_number_list
                    break
        if not find_code:
            lines_s = ','.join(str(i) for i in line_number_list)
            messages[f"SkuCode {SkuCode} not found in cloud. Caused by lines: "] += lines_s
            succeed = False
        if find_code and not name_matched:
            lines_s = ','.join(str(i) for i in line_number_list)
            messages[f"SkuCode {SkuCode} and SkuName {SkuName} not match in cloud. Caused by lines: "] += lines_s
            succeed = False

    batch_codes = defaultdict(list)
    codes_data = {}
    n = 0
    for (SkuCode, SkuName, cloud_product_id), line_number_list in products_with_cloud_id.items():
        for line_number in line_number_list:
            csv_line_dict = dict_l[line_number - 2] # line start with 2
            batch_number = csv_line_dict['LotNumber']
            mfd = csv_line_dict['ManufacturingDate'] # 2021-03-08
            exp = csv_line_dict['ExpirationDate'] # 2023-03-08
            uri = csv_line_dict['URI'] # https://brand.trust.codes/yHgsZgsy or https://truea2.com/AREjalus3kLRBHQojdXk
            qr_id = url_2_qr_id(uri)
            batch_key = (cloud_product_id, batch_number, mfd, exp)
            batch_codes[batch_key].append(qr_id)
            print_time = csv_line_dict['PrintTime'] # 2021-03-08 09:57:11.476, GMT+13
            print_serial_number = csv_line_dict['PrintSerialNumber']
            carton_id = csv_line_dict['CartonID']
            pallet_id = csv_line_dict['PalletID']
            data = {}
            if print_time:
                data["print_time"] = print_time
            if print_serial_number:
                data["print_serial_number"] = print_serial_number
            if carton_id:
                data["carton_id"] = carton_id
            if pallet_id:
                data["pallet_id"] = pallet_id
            codes_data[qr_id] = data
            n += 1
    messages[f"succeed to digest {n} lines"] = ""
    messages_s = ''
    for k,v in messages.items():
        messages_s += f"{k}{v}"
    return succeed, messages_s, batch_codes, codes_data




digest_activation_file(
    '/Users/teemo/Downloads/10810005414408-Haven Goat Follow-on Formula - Stage 2-2021-08-03T164412.8200000-10008.csv',
    'https://api.trust.codes', 
    'iKxF3np9otemukemk5nsMjj3tC6EqnwBrge5E4rK')


a=3
def f():
    global a
    a=4
    print(a)
f()
print(a)
import csv
with open('/Users/teemo/Documents/GitHub/tinyPythonScripts/testing/test.csv') as f:
    a = [{k: str(v) for k, v in row.items()}
        for row in csv.DictReader(f, skipinitialspace=True)]
print(a)



target_file = '/tmp/testing.csv'
with open(target_file, "w") as f:
    pass

with open(target_file, "a") as f:
    f.write('CCIC Code,Activated_At\n')
    f.write('aaa,bbb\n')
    f.write('aaa,bbb\n')
    f.write('aaa,bbb\n')




temp_csv_file = csv.writer(open(f"/tmp/testing.csv", "w+"))
temp_csv_file.writerow(["CCIC Code", "Activated_At"])
temp_csv_file.writerow([
    'ccic______','time___'
    ])
temp_csv_file

def guess_cost(n, guess):
    re = 0
    ori_guess = guess
    while n != guess:
        re += guess
        guess = (guess+1 + n)//2
    print(f"guess {ori_guess}: cost {re}")
    return re

guess_cost(1000, 650)
guess_cost(1000, 675)
guess_cost(1000, 699)
guess_cost(1000, 745)
guess_cost(1000, 748)
guess_cost(1000, 749)
guess_cost(1000, 750)
guess_cost(1000, 751)
guess_cost(1000, 800)

class Solution:
    def dieSimulator(self, n: int, rollMax: List[int]) -> int:
        dp = [1,1,1,1,1,1]
        
        for k in range(n-1):
            newdp = [0,0,0,0,0,0]
            for i in range(6):
                for j in range(6):
                    newdp[i] += ( i!=j or k < rollMax[i] - 1) * dp[j]
            dp = newdp
        return sum(dp) % (10**9 + 7)

a = Solution().dieSimulator(
3,
[1,1,1,2,2,3]
)
print(a)



import boto3
s3_client = boto3.client('s3')
d = s3_client.list_objects(Bucket='trustcodes-file-exchange', Prefix='staging/nig-line-1/brand-639-NIGNutritionalsLtd/generated')
c = 0
for i in d['Contents']:
    if i['Key'].lower().endswith('.csv'):
        c+=1

c

import boto3
session = boto3.Session(
    aws_access_key_id='AKIAT2VQQB4FF2CNZP6E',
    aws_secret_access_key='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',
)
s3 = session.resource('s3')
bucket = s3.Bucket('trustcodes-file-exchange')
c = 0
for i in bucket.objects.filter(Prefix='staging/nig-line-1/brand-639-NIGNutritionalsLtd/generated'):
    print(i)
    c+=1

c

bucket.upload_file("/Users/teemo/Documents/testing.csv", "staging/nig-line-1/brand-639-NIGNutritionalsLtd/generated/testing.csv")
bucket.download_file("staging/nig-line-1/brand-639-NIGNutritionalsLtd/generated/testing.csv", "/Users/teemo/Documents/testing2.csv")



a = {1,3,6,34,34,9898,3}
b = {3,2,77,3,5}
a & b
a | b

a = {3:2,"333":334,233234:111}
a.keys()

class Solution:
    def largestDivisibleSubset(self, nums):
        def dfs(l, cursor):
            if cursor == len(nums):
                return l
            results = []
            for i in range(cursor, len(nums)):
                if not l or nums[i] % l[-1] == 0:
                    k = l + [nums[i]]
                    results.append(dfs(k, i+1))
            if results:
                results = sorted(results, key = lambda a: len(a))
                return results[-1]
            return l
        
        nums = sorted(nums)
        return dfs([],0)

a = Solution().largestDivisibleSubset([2,3,4,9,8])





from smb.SMBConnection import SMBConnection
conn = SMBConnection(
			'sff_rm_sync',
			'trustcodes_sff_tlc',
			'tcas',
			'TOE',
			use_ntlm_v2 = True)
assert conn.connect('192.168.1.4', 139)

# fetch
with open('/Users/teemo/Documents/Dev/scripts/the_lamb_company_db_scripts/nj/rm_data_from_invoke_20210607.csv', 'wb') as fp:
    file_attributes, filesize = conn.retrieveFile('sff_db', '/nj/rm_data_from_invoke_20210607.csv', fp, timeout=30)
with open('/Users/teemo/Documents/Dev/scripts/the_lamb_company_db_scripts/la/raw_mat_to_trustcode_20210603.csv', 'wb') as fp:
    file_attributes, filesize = conn.retrieveFile('sff_db', '/la/split/raw_mat_to_trustcode_20210603.csv', fp, timeout=30)

# in container fetch
with open('/src/tce/rm_data_from_invoke_20210607.csv', 'wb') as fp:
    file_attributes, filesize = conn.retrieveFile('sff_db', '/nj/rm_data_from_invoke_20210607.csv', fp, timeout=30)

# delete
conn.deleteFiles('sff_db', '/la/split/raw_mat_to_trustcode_20210604.csv', delete_matching_folders=False, timeout=30)

# list
fs = conn.listPath('sff_db', '/la')
for f in fs:
    f.filename
    f.isDirectory


import uuid
print('a' + str(uuid.uuid4())[:8])

import csv
with open("/Users/teemo/Documents/Dev/scripts/the_lamb_company_db_scripts/la/raw_mat_to_trustcode_20210603.csv", mode='r', encoding='utf-8') as f:
    a = [{k: v for k, v in row.items()}
        for row in csv.DictReader(f, skipinitialspace=True)]

with open("/Users/teemo/Documents/Dev/scripts/the_lamb_company_db_scripts/la/raw_mat_to_trustcode_20210603.csv", mode='r', encoding='utf-8') as f:
    all_text = f.read()

for scan in a:
    print(scan['\ufeffproduction_lot'])
    for key,value in scan.items():
        print(f"{key}:{value}")


import re
if re.match('.*NUT?0?1.*', '210423C1 NUT1-3A'):
    print(1)
else:
    print(0)
print(re.match('.*NUT?0?1.*', '210423C1 NUT1-3A'))


for i in range(10,0,-1):
    print(i)
    
from collections import defaultdict
def maximumPopulation(logs) -> int:
    years = defaultdict(int)
    for log in logs:
        for i in range(log[0], log[1]):
            years[i] += 1
    years = sorted(years.items(), key=lambda item: item[1])
    pop = years[-1][1]
    re = float('inf')
    for i in years:
        if i[1] == pop:
            re = min(re, i[0])
    return re

maximumPopulation([[1950,1961],[1960,1971],[1970,1981]])

print ('0123456789'[:7])

from shutil import copyfile
import sys
import re
import os
import datetime
import calendar

def add_months(sourcedate, months):
    month = sourcedate.month - 1 + months
    year = sourcedate.year + month // 12
    month = month % 12 + 1
    day = min(sourcedate.day, calendar.monthrange(year,month)[1])
    return datetime.date(year, month, day)

dt = datetime.date(2010, 12, 9)
print(add_months(dt, 1))

companyname = sys.argv[1]
validletter = re.sub(r'[\W_]+', '', companyname)
filename = 'nz.com.' + re.sub(r'[\s]+', '', validletter).lower() + '.yml'
validnamewithspace = re.sub(r'[^\w\s]+', '', companyname)
issuer = re.sub(r'[\s]+', ' ', validnamewithspace).strip().lower().title()
keywords = re.sub(r'[^\w\s]+', '.', companyname.strip())
keywords = re.sub(r'\s+', "This_is_a_space_to_avoid_KeyError_Teemo", keywords)
keywords = keywords.replace("This_is_a_space_to_avoid_KeyError_Teemo", '\\s')
if not os.path.exists('./extract/templates/nz'):
    os.makedirs('./extract/templates/nz')
if os.path.isfile('./extract/templates/nz/' + filename): 
    print('Template already exist: ' + './extract/templates/nz/' + filename)
    quit
else:
    copyfile('standard_template_nz_com.yml', './extract/templates/nz/'+filename)
    newline = os.linesep # Defines the newline based on your OS.
    source_fp = open('standard_template_nz_com.yml', 'r')
    target_fp = open('./extract/templates/nz/'+filename, 'w')
    lineN = 0
    for row in source_fp:
        if lineN == 0:
            row = 'issuer: ' + issuer + "\n"
        if lineN == 2:
            row = "- '" + keywords + "'" + "\n"
        lineN += 1
        target_fp.write(row)
    source_fp.close()
    target_fp.close()
    print('Template created: ' + './extract/templates/nz/' + filename)
quit


if False:
    from datetime import datetime
    import dateparser


    datetime_object = datetime.strptime('010519', '%d%m%y')
    datetime_object = datetime.strptime('29-Nov-19', '%d-%b-%y')
    print(datetime_object)



    from pynput.keyboard import Key, Listener, Controller
    keyboard = Controller()
    import pyautogui

    def on_press(key):
        key_press = str(key)
        print("PRESSED", key_press)
        # if key_press == "'1'":
        #     keyboard.press(Key.backspace)
        #     keyboard.release(Key.backspace)
        #     keyboard.type("paula@bodycorpadmin.co.nz")
        # if key_press == "'2'":
        #     keyboard.press(Key.backspace)
        #     keyboard.release(Key.backspace)
        #     keyboard.type("Paula005")
        # if key_press == "'3'":
        #     keyboard.press(Key.backspace)
        #     keyboard.release(Key.backspace)
        #     # keyboard.type("427318")
        if key_press == "'4'":
            keyboard.press(Key.backspace)
            keyboard.release(Key.backspace)
            keyboard.type("utility@bca.co.nz")
        if key_press == "'5'":
            keyboard.press(Key.backspace)
            keyboard.release(Key.backspace)
            keyboard.type("pa$$word")
        if key_press == "'6'":
            keyboard.press(Key.backspace)
            keyboard.release(Key.backspace)
            keyboard.type("1/12/2019")
        if key_press == "'7'":
            keyboard.press(Key.backspace)
            keyboard.release(Key.backspace)
            keyboard.type("1/1/2020")
        if key_press == "'8'":
            keyboard.press(Key.backspace)
            keyboard.release(Key.backspace)
            keyboard.type("c:\\share\\pulse\\201912.pdf")

    with Listener(on_press=on_press) as listener:
        listener.join()




    import sys
    import logging as logger
    import datetime
    import uuid
    from azure.storage.file import FileService
    from azure.storage.file import ContentSettings
    from shutil import copyfile
    import os
    import re

    onlinefilename = str(uuid.uuid4()) + '.pdf'
    file_service = FileService(protocol = 'https', endpoint_suffix = 'core.windows.net', 
    account_name = 'bcaedms', 
    account_key = '56lA87PYMQygDJNucl+f0jnB6ArYFJou/3VYaEuWWpOJkVysD+yZyQtW7R9uY9UtqTKQ1Iq+4VRHBRoDa4OeJQ==')
    file_service.create_file_from_path(
        'cinvoice',
        None, # We want to create this blob in the root directory, so we specify None for the directory_name
        onlinefilename,
        'C:\\Users\\Teemo\\Desktop\\2170731685.pdf',
        content_settings=ContentSettings(content_type='application/pdf'))

    print(onlinefilename)














    id = 350723199001250014
    id = 350722199412081541
    coe = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2]
    lastKey = [1,0,'X',9,8,7,6,5,4,3,2]

    i = 0
    sumN = 0
    while id > 10:
        id = id//10
        lastB = id % 10
        sumN += lastB * coe[len(coe) - 1 - i]
        i += 1
    k = sumN % 11

    print('the last bit of this ID should be ' + str(lastKey[k]))



    coe = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2]
    lastKey = [1,0,'X',9,8,7,6,5,4,3,2]
    j = 0
    while j < 10000: 
        id = 350722199412080541
        id += j
        j += 1000
        i = 0
        sumN = 0
        while id > 10:
            id = id//10
            lastB = id % 10
            sumN += lastB * coe[len(coe) - 1 - i]
            i += 1
        k = sumN % 11

        print('if the 15th number is ' + str((j-1000)//1000)  +', the last bit of this ID should be ' + str(lastKey[k]))

    import os

    print(os.path.join(os.path.abspath(os.path.join('/root/edms/Others', os.pardir)),'upload'))

    import re
    print(re.sub(r'[\W_]+', '', 'adfadsfafhewf*(^&$ffauehfdsfasdfdsafsdlfk)' ))

    from datetime import date
    from datetime import datetime
    import shutil
    currentP = os.path.dirname(os.path.realpath(__file__))
    sourceP = os.path.join(currentP, 'successful')
    destP = os.path.join(os.path.abspath(os.path.join(currentP, os.pardir)), 'successful')
    for filename in os.listdir(sourceP):
        if filename.endswith(".pdf"):
            sourceF = os.path.join(sourceP, filename)
            unixTimestamp = os.path.getmtime(sourceF)
            modifyDate = datetime.utcfromtimestamp(unixTimestamp)
            print(modifyDate.strftime('%d-%m-%Y'))
            destP2 = os.path.join(destP, modifyDate.strftime('%d-%m-%Y'))
            destF = os.path.join(destP2, filename)
            shutil.move(sourceF, destF)




    print(date.today().strftime('%d-%m-%Y'))

    print (os.path.abspath(os.path.join(r'c:\PythonScript\testing', os.pardir)))

    from datetime import datetime
    import dateparser


    datetime_object = datetime.strptime('010519', '%d%m%y')
    datetime_object = datetime.strptime('31st May 2019', '%dst %b %Y')
    print(datetime_object)


    # datetime_object = datetime.strptime('30th Apr 2019', '%d %b %Y')
    str1 = datetime.now().strftime('%m')
    print(str1)

    datetime_object = dateparser.parse('31st May 2019', '%d %b %Y')

    print(datetime_object)

