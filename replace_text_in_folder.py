import re
import os

print("===========================\nAttention, this function will replace all original csv files in the folder!!\n===========================")
source_file = input("Enter absolute path or drag the folder here: ").strip()
tobereplaced = input("String to be replaced:")
replacewith = input("Replace with string:")

if not tobereplaced and not replacewith:
    tobereplaced = 'Day,Month,Year,City,Province,Country,Quantity of scan,Product Name,Batch number,Total quanty of this batch"'
    replacewith = 'Day,Month,Year,City,Province,Country,Quantity of scan,Product Name,Batch number,Total quanty of this batch\n"'
if '.' in source_file:
    filenamefields = source_file.split('.')
    filenamefields[-2] += '_fist_column'
    dest_file = '.'.join(filenamefields)
else:
    dest_file = source_file + '_fist_column'

cc = 0

for filename in os.listdir(source_file):
    if filename.endswith(".csv") or filename.endswith(".CSV"): 
        filename = os.path.join(source_file, filename)
        file = open(filename, mode='r', encoding='utf-8')
        all_text = file.read()
        file.close()

        if tobereplaced in all_text:
            result = all_text.replace(tobereplaced, replacewith)
            with open(filename, "w") as fp:
                fp.write(result)
            cc += 1
    else:
        continue

print(f'{cc} files changed')