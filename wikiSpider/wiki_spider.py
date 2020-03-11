from WindowMgr import *
import re
import webbrowser
import time
import os
from pynput.mouse import Button, Controller
mouse = Controller()
from pynput.keyboard import Key, Controller
keyboard = Controller()
from pynput.mouse import Listener

def on_click(x, y, button, pressed):
    if pressed:
        print('Mouse clicked at ({0}, {1}) with {2}'.format(x, y, button))



browserExe = "chrome.exe"
audio_folder = "c:\\audio"
dir_path = os.path.dirname(os.path.realpath(__file__))
config_file = os.path.join(dir_path, 'wiki_id.txt')
if os.path.isfile(config_file):
    with open(config_file) as f:
        config = f.readlines()
# you may also want to remove whitespace characters like `\n` at the end of each line
config = [x.strip() for x in config] 


# with Listener(on_click=on_click) as listener:
#     listener.join()


w = WindowMgr()
for wikiid in config:
    os.system("taskkill /f /im "+browserExe)
    webbrowser.open_new_tab(
                "https://wiki.uxtrata.net/wiki/" + wikiid
            )
    time.sleep(5)
    mouse.position = (389, 242)
    time.sleep(0.5)
    mouse.press(Button.left)
    time.sleep(0.5)
    mouse.position = (300, 245)
    time.sleep(0.5)
    mouse.scroll(0, -100000)
    time.sleep(0.5)
    mouse.position = (384, 981)
    time.sleep(0.5)
    mouse.release(Button.left)
    time.sleep(0.5)
    keyboard.press(Key.ctrl)
    keyboard.press('c')
    keyboard.release('c')
    keyboard.release(Key.ctrl)
    time.sleep(0.5)

    #paste content to Word
    w.find_window_wildcard(".*Word.*")
    w.set_foreground()
    time.sleep(0.5)
    keyboard.press(Key.ctrl)
    keyboard.press('v')
    keyboard.release('v')
    keyboard.release(Key.ctrl)
    time.sleep(6)

    #insert page break
    mouse.position = (108, 93)
    time.sleep(0.5)
    mouse.click(Button.left)

    #save
    time.sleep(0.5)
    keyboard.press(Key.ctrl)
    keyboard.press('s')
    keyboard.release('s')
    keyboard.release(Key.ctrl)


