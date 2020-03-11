import re
import webbrowser
import time
import string
from pynput.mouse import Button, Controller
mouse = Controller()
from pynput.keyboard import Key, Controller
keyboard = Controller()
alphabets = string.ascii_lowercase

filepath = 'MoreThan50ContactsUrl20181120130535.txt'

with open(filepath) as fp:  
    line = fp.readline()
    cnt = 0
    while line:
        # print("Line {}: {}".format(cnt, line.strip()))
        webbrowser.open_new_tab(
            line
        )
        time.sleep(10)
        mouse.scroll(0, -10000)
        for x in range(60):
            time.sleep(0.5)
            mouse.scroll(0, -10000)
        cnt += 1
        line = fp.readline()

print("Opening Contacts finish! {} page have been opened.".format(cnt))




