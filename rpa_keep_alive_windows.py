import time
from datetime import datetime
import random
import pynput
from pynput.keyboard import Key
from pynput.mouse import Button
keyboard = pynput.keyboard.Controller()
mouse = pynput.mouse.Controller()
start_time = datetime.now()

def add_timestamp(text):
    return f"{datetime.now().strftime('%Y-%m-%d %H:%M:%S')} {text}"

def timedelta_to_str(td):
    return f'{f"{td.days} days " if td.days else ""}{f"{td.seconds//3600} hours " if td.seconds//3600 else ""}{(td.seconds//60)%60} minutes'

# open notepad
keyboard.press(Key.cmd_l)
keyboard.press('r')
keyboard.release('r')
keyboard.release(Key.cmd_l)
time.sleep(1)
keyboard.type('notepad.exe')
keyboard.press(Key.enter)
keyboard.release(Key.enter)
time.sleep(1)
keyboard.press('A')
keyboard.release('A')
time.sleep(1)
keyboard.press('n')
keyboard.release('n')
time.sleep(1)
keyboard.press('n')
keyboard.release('n')
time.sleep(1)
keyboard.press('e')
keyboard.release('e')
time.sleep(1)
keyboard.type(' away from keyboard\nPlease keep this window focused\n\n\n')

while True:
    # move mouse to random positions
    for _ in range(10):
        p1 = random.randint(300,500)
        p2 = random.randint(300,500)
        mouse.position = (p1, p2)
    # remove content
    td = datetime.now() - start_time
    keyboard.type(add_timestamp(f'AFK for {timedelta_to_str(td)}\n'))
    time.sleep(30)

