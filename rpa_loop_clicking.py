import rpa as r
import time
# r.init(visual_automation = True, chrome_browser = False)
# r.wait(3)

# r.keyboard('https://1839.trust.codes/xCJEHBoK[enter]')
# r.wait(2)

r.init(visual_automation = True)
r.url('https://www.foodsafety.govt.nz/registers-lists/exporters/index.htm?setup_file=exporters-ssi.setup.cgi&rows_to_return=20000&submit_search=Search')
time.sleep(10)


tr = '//form[@ACTION="/registers-lists/exporters/index.htm"]//tr'
show_email_button = '//a[@class="obf-show-email"]'
count = r.count(tr)
print(count)
for i in range(count):
    button = f"{tr}[{i+1}]{show_email_button}"
    r.click(button)
    print(f"clicked {button}")

print('clicked all')


time.sleep(99999999)

result = r.read('page')
r.close()

target_file = '/Users/teemo/Downloads/www.foodsafety.govt.nz_registered_list.txt'
with open(target_file, "w") as f:
    f.write(result)
