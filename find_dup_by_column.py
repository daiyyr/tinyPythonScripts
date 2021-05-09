import re
from collections import defaultdict

source_file = input("Enter absolute file path or drag the file here: ").strip()
if '.' in source_file:
    filenamefields = source_file.split('.')
    filenamefields[-2] += '_dup'
    dest_file = '.'.join(filenamefields)
else:
    dest_file = source_file + '_dup'

targetColumn = input("Enter target column index starting with 0; If you are comparing the whole line, just press enter:").strip()

if not targetColumn:
    print("Comparing whole line...")
else:
    targetColumn = int(targetColumn)
    print(f"Comparing the {targetColumn} column")

file = open(source_file, mode='r', encoding='utf-8')
all_text = file.read()
file.close()

dup = defaultdict(int)
for line in all_text.split("\n"):
    if not targetColumn:
        dup[line] += 1
    else:
        dup[line.split(",")[targetColumn]] += 1

dest_text = ""

for key in dup:
    if dup[key] > 1:
        dest_text += f"{key}, {dup[key]}\r\n"


file = open(dest_file, 'w+')
file.close()

with open(dest_file, "w") as f:
    f.write(dest_text)

print(f"result in {dest_file}")