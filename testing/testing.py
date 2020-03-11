

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

