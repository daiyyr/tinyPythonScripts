import re
import webbrowser
import time
import string
import os
from pynput.mouse import Button, Controller
mouse = Controller()
from pynput.keyboard import Key, Controller
keyboard = Controller()
alphabets = string.ascii_lowercase

filepath = 'salesforce_org_id.csv'
#filepath = 'MoreThan50ContactsUrl20181120130535.txt'

with open(filepath) as fp:  
    line = fp.readline()
    cnt = 0
    killChrome = 0
    while line:
        webbrowser.open_new_tab(
            'https://sparknz.lightning.force.com/lightning/r/' + line + '/related/AccountContactRelations/view'
        )
        time.sleep(1)
        cnt += 1
        killChrome += 1
        if killChrome == 20:
            killChrome = 0
            time.sleep(10)
            os.system("taskkill /im chrome.exe /f")
            time.sleep(2)
        line = fp.readline()

print("Opening Assets finish! {} page have been opened.".format(cnt))




