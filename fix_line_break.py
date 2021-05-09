import re

source_file = '/Users/teemo/Documents/Dev/tclm_association/blackmores/28928_9300807287415_J445115_20200922.csv'
dest_file = source_file + '_result'
search = r'(\?<=\d)\sROLL\-ID\:'
replaceTo = '\r\nROLL-ID:'

file = open(source_file,mode='r')
all_text = file.read()
file.close()

file = open(dest_file, 'w+')
file.close()

dest_text = re.sub(search,replaceTo,all_text)
with open(dest_file, "w") as f:
    f.write(dest_text)