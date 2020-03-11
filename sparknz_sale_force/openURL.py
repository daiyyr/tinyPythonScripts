import webbrowser
import time

# filePath = input("Enter URL list file path: ")
filePath = 'UrlList20181027151347.txt'


with open(filePath) as fp:
    line = fp.readline()
    cnt = 1
    while line:
        # print("Line {}: {}".format(cnt, line.strip()))
        if "/view" not in line:
            line = "https://sparknz.lightning.force.com/lightning/r/Account/" + line + "/view"
        webbrowser.open_new_tab(line)
        line = fp.readline()
        cnt += 1
        time.sleep(5)

print("Explore URL finish! {} page have been opened.".format(cnt - 1))

