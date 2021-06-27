source = '/Users/teemo/Downloads/a2_rpd_logistics.csv'
f = open(source,'r')
text = f.read()
f.close()

from collections import defaultdict
q = defaultdict(int)
a = defaultdict(int)
lines = text.split('\n')
firstline = True
for line in lines:
    if firstline:
        firstline = False
        continue
    columns = line.split(',')
    key = columns[4]
    quantity = int(columns[5])
    association = int(columns[6])
    q[key] += quantity
    a[key] += association

print(f"{q}")
print(f"{a}")
