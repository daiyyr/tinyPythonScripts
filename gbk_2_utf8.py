import re

source_file = input("Enter absolute path or drag the folder here: ").strip()
if '.' in source_file:
    filenamefields = source_file.split('.')
    filenamefields[-2] += '_utf8'
    dest_file = '.'.join(filenamefields)
else:
    dest_file = source_file + '_utf8'


file = open(source_file,mode='r', encoding='gbk')
all_text = file.read()
file.close()

file = open(dest_file, 'w+')
file.close()

dest_text = all_text #.decode('gbk').encode('utf-8')
with open(dest_file, "w") as f:
    f.write(dest_text)
