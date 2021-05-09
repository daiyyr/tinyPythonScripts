import re

source_file = input("Enter absolute path or drag the folder here: ").strip()
if source_file.startswith("'") and source_file.endswith("'"):
    source_file = source_file.replace("'","")
if '.' in source_file:
    filenamefields = source_file.split('.')
    file_suffix = filenamefields[-1]
    file_pre_name = '.'.join(filenamefields[:len(filenamefields)-1])
else:
    file_pre_name = source_file
    file_suffix = ""

lines_each_file = input("Enter number of lines for each file (default 100,000): ").strip()
try:
    lines_each_file = int(lines_each_file)
except:
    print("use default file max line number: 100,000")
    lines_each_file = 100000

file = open(source_file,mode='r')
all_text = file.read()
file.close()

lines = all_text.split('\n')
i = 0
prefile = ""
dest_file = file_pre_name + "_" + str(int(i/lines_each_file) + 1)
if file_suffix:
    dest_file += "." + file_suffix
file = open(dest_file, 'w') # make sure it's blank before writing
file.close()
f = open(dest_file, "w+")
for line in lines:
    dest_file = file_pre_name + "_" + str(int(i/lines_each_file) + 1)
    if file_suffix:
        dest_file += "." + file_suffix
    if prefile and prefile != dest_file:
        f.close()
        file = open(dest_file, 'w') # make sure it's blank before writing
        file.close()
        f = open(dest_file, "w+")
    prefile = dest_file
    f.write(line+'\n')
    i += 1
f.close()

