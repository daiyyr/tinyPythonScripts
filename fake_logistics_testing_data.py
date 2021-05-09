import re

codes_file = '/Users/teemo/Documents/Dev/logistics/2020-12-13-100000-codes-Trust Codes Tested-PROD-no_HK_test-1607899065.625989.csv'
source_file = '/Users/teemo/Documents/Dev/logistics/testing_logistics_trust_codes_tested_102300_2020-12-14.csv'
dest_file = source_file + '_result'

search = r'\"102300\"'
replaceTo = '"example"'

file = open(codes_file,mode='r')
codes_text = file.read()
file.close()

file = open(source_file,mode='r')
all_text = file.read()
file.close()

file = open(dest_file, 'w+')
file.close()

dest_text = re.sub(search,replaceTo,all_text)

lines = dest_text.splitlines()
code_lines = codes_text.splitlines()

i=1
totalLiles = len(lines)
while i < totalLiles:
    fields = lines[i].split(',')
    fields[0] = code_lines[i-1].replace('https://nohk.trust.codes/','')
    lines[i] = ','.join(fields)
    i+=1
dest_text = '\r\n'.join(lines)
with open(dest_file, "w") as f:
    f.write(dest_text)
