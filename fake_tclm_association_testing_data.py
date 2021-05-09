import re

codes_file = '/Users/teemo/Documents/Dev/tclm_association/trust_code_tested/2021-02-04-10000-codes-Trust Codes Tested-PROD-no_HK_test-1612433801.689419.csv'
source_file = '/Users/teemo/Documents/Dev/tclm_association/trust_code_tested/270_20201103_E.csv'
dest_file = source_file + '_result.csv'

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

#dest_text = re.sub(search,replaceTo,all_text)
dest_text = all_text

lines = dest_text.splitlines()
code_lines = codes_text.splitlines()

i=1
totalLiles = len(lines)
while i < totalLiles:
    fields = lines[i].split(',')
    fields[1] = code_lines[i-1]#.replace('https://nohk.trust.codes/','')
    lines[i] = ','.join(fields)
    i+=1
dest_text = '\r\n'.join(lines)
with open(dest_file, "w") as f:
    f.write(dest_text)
