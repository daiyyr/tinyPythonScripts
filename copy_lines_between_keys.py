# import re

# source = '/Users/teemo/Downloads/tc_web-20210210T070703.424.txt'
# start_key = '2021-02-03 14:04:57'
# end_key = '2021-02-04 07:08:37'

# target = source + '_' + start_key + '_' + end_key + '.txt'

# file = open(source, mode='r', encoding='utf-8')
# all_text_f1 = file.read()
# file.close()

# m = re.search(start_key + '(\s|\S)*' + end_key, all_text_f1)
# target_text = m.group(0)

# with open(target, "w") as f:
#     f.write(target_text)




# batch operations
import re
batches = [
        ['2021-02-04 07:09:47', '2021-02-04 12:58:42'], 
        ['2021-02-04 12:59:22', '2021-02-05 06:48:57'], 
        ['2021-02-05 06:50:48', '2021-02-07 23:24:24'], 
        ['2021-02-07 23:24:54', '2021-02-08 14:28:05'], 
    ]

for b in batches:
    source = '/Users/teemo/Downloads/tc_web-20210210T070703.424.txt'
    start_key = b[0]
    end_key = b[1]
    target = source + '_' + start_key + '_' + end_key + '.txt'
    file = open(source, mode='r', encoding='utf-8')
    all_text_f1 = file.read()
    file.close()
    m = re.search(start_key + '(\s|\S)*' + end_key, all_text_f1)
    target_text = m.group(0)
    with open(target, "w") as f:
        f.write(target_text)



