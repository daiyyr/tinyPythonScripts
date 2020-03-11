# find lines from source which not exist in db

# sourcepath = 'readFailed.txt'
# dbFile = 'orgs.csv'

sourcepath = 'UrlList20181003164643.txt'
dbFile = 'org with assets.csv'

with open(sourcepath) as fp:  
    line = fp.readline()
    cnt = 1
    while line:
        line = line.replace("/view", "")\
            .replace("https://sparknz.lightning.force.com/lightning/r/Account/", "")
        # print("Line {}: {}".format(cnt, line.strip()))
        if line in open(dbFile).read():
            {}
        else:
            print(line, end='', flush=True)
        line = fp.readline()
        cnt += 1

print("Search finished!")



