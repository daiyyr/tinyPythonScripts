import re
import webbrowser
import time
from pynput.mouse import Button, Controller
mouse = Controller()
from pynput.keyboard import Key, Controller
keyboard = Controller()

time.sleep(2)
for x in range(30):
    mouse.click(Button.left, 3)
    keyboard.press(Key.ctrl)
    keyboard.press('a')
    keyboard.release('a')
    keyboard.release(Key.ctrl)
    keyboard.type('TEXT')
    mouse.move(0, 10)

mouse.move(0, -30 * 10)
mouse.click(Button.left, 1)
mouse.scroll(0, -30 * 10 * 2)


