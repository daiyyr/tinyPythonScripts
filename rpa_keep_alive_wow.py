import time
import random
from pynput.keyboard import Key, Controller
keyboard = Controller()



time.sleep(5)

while True:
    #ren
    keyboard.press('x')
    keyboard.release('x')
    time.sleep(3)
    
    keyboard.press('f')
    keyboard.release('f')
    time.sleep(3)
    
    keyboard.press('r')
    keyboard.release('r')
    time.sleep(3)
    
    keyboard.press('q')
    keyboard.release('q')
    time.sleep(3)
    
    #xinlingzhihuo
    keyboard.press('c')
    keyboard.release('c')
    time.sleep(1)
    

    
    
    #random move
    ntimes = random.randint(3,7)
    
    keyboard.press('w')
    time.sleep(random.randint(1,ntimes)*0.5)
    keyboard.release('w')
    time.sleep(1)
    keyboard.press('s')
    time.sleep(random.randint(1,ntimes)*0.79) #charactor move back slower than forward
    keyboard.release('s')
    time.sleep(1)
    keyboard.press('a')
    time.sleep(random.randint(1,ntimes)*0.5)
    keyboard.release('a')
    time.sleep(1)
    keyboard.press('d')
    time.sleep(random.randint(1,ntimes)*0.5)
    keyboard.release('d')
    time.sleep(1)
    
    
    time.sleep(60)
    
    
    #keyboard.press(Key.ctrl)
    #keyboard.release(Key.ctrl)