import re
import os


source_file = input("Enter absolute path or drag the folder here: ").strip()

skipp = input("Skip first line? Enter y if yes:").strip()
skipfirst = 'y' in skipp or 'Y' in skipp

rmspace = input("Remove all spaces Enter y if yes:").strip()
rm_space = 'y' in rmspace or 'Y' in rmspace

if '.' in source_file:
    filenamefields = source_file.split('.')
    filenamefields[-2] += '_fist_column'
    dest_file = '.'.join(filenamefields)
else:
    dest_file = source_file + '_fist_column'

dest_file = source_file + '/fist_column_in_this_folder.txt'

dest_text = ''

search0 = r'\"'
replaceTo0 = '\''

search = r'\s'
replaceTo = ''
cc = 1

for filename in os.listdir(source_file):
    if filename.endswith(".csv") or filename.endswith(".CSV"): 
        filename = os.path.join(source_file, filename)
        file = open(filename, mode='r', encoding='utf-8')
        all_text = file.read()
        file.close()

        lines = all_text.split('\n')
        first = True
        for line in lines:
            if not line.strip():
                continue
            if first and skipfirst:
                first = False
                continue

            temp = re.sub(search0,replaceTo0,line.split(',')[0])
            if rm_space:
                temp = re.sub(search,replaceTo,temp)
            dest_text += temp+','
            cc += 1
    else:
        continue

if dest_text.endswith(','):
    dest_text = dest_text[:-1]

file = open(dest_file, 'w+')
file.close()

with open(dest_file, "w") as f:
    f.write(dest_text)

print(f'{cc} lines found')