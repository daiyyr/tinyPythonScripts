import re
import webbrowser
import time
import string
from pynput.mouse import Button, Controller
mouse = Controller()
from pynput.keyboard import Key, Controller
keyboard = Controller()
alphabets = string.ascii_lowercase


def select_all():
    keyboard.press(Key.ctrl)
    keyboard.press('a')
    keyboard.release('a')
    keyboard.release(Key.ctrl)


def keyboard_delete():
    keyboard.press(Key.delete)
    keyboard.release(Key.delete)


# last time: "gxna"
def type_random_words(depth, full_word):
    depth += 1
    for ch in (alphabets + ' '):
        # keyboard.type(ch)
        full_word += ch
        if depth == 4:
            # with open('result.txt', 'a') as the_file:
                # the_file.write(full_word + "\n")
            if (ord(full_word[:1]) - 96) * 26 * 26 + (ord(full_word[1]) - 96) * 26 + (ord(full_word[2]) - 96)\
                    < (4 * 26 * 26) + (2 * 26) + 16:
                full_word = full_word[:-1]
            else:
                keyboard.type(full_word)
                time.sleep(0.8)
                select_all()
                keyboard_delete()
                full_word = full_word[:-1]
        else:
            type_random_words(depth, full_word)
            full_word = full_word[:-1]


time.sleep(2)
type_random_words(0, '')






#
# main_searching_char = 'a'
# time.sleep(2)
# for i in alphabets:
#     keyboard.type(main_searching_char)
#     keyboard.type(i)
#     time.sleep(3)
#     select_all()
#     keyboard_delete()
#
# keyboard.type(main_searching_char + ' ')
# time.sleep(3)
# select_all()
# keyboard_delete()
#
# keyboard.type(' ' + main_searching_char)
# time.sleep(3)
# select_all()
# keyboard_delete()
