import re

source_file = input("Enter absolute file path or drag the file here: ").strip()
if '.' in source_file:
    filenamefields = source_file.split('.')
    filenamefields[-2] += '_comma_splitted'
    dest_file = '.'.join(filenamefields)
else:
    dest_file = source_file + '_comma_splitted'


file = open(source_file, mode='r', encoding='utf-8')
all_text = file.read()
file.close()

file = open(dest_file, 'w+')
file.close()

dest_text = all_text.replace('\n',',')
with open(dest_file, "w") as f:
    f.write(dest_text)
