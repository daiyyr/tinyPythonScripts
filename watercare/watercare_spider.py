import urllib.request,re,os,datetime
from bs4 import BeautifulSoup as Soup
import requests
from sys import argv
# python 2
# import urllib,urllib2,cookiejar
# login_data = urllib.request.urlencode({'username' : username, 'j_password' : password})
# opener.open('http://www.example.com/login.php', login_data)
# resp = opener.open('http://www.example.com/hiddenpage.php')
# print(resp.read())

username = 'paula@bodycorpadmin.co.nz'
password = 'Paula005'
# cj = cookiejar.CookieJar()
current_directory=os.path.dirname(os.path.realpath(__file__))
running_log_file=os.path.join(current_directory, "running.log")
error_log_file=os.path.join(current_directory, "error.log")

def writeErrorLog(message):
    with open(error_log_file, 'a') as f:
        f.write(datetime.datetime.now().strftime("%Y-%m-%d %H:%M")+" " + message + '\n')

def writeRunningLog(message):
    with open(running_log_file, 'a') as f:
        f.write(datetime.datetime.now().strftime("%Y-%m-%d %H:%M")+" " + message + '\n')

class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

#print(bcolors.WARNING + "Failed to find StateProperties" + bcolors.ENDC)

def searchFromPage(page, pattern, succeed_msg, failed_msg):
    x = re.search(pattern, page)
    if x is not None:
        writeRunningLog(succeed_msg)
        return x[0]
    else:
        writeErrorLog(failed_msg)
        return None

def handleCookies(opener, pointer):
    for h in pointer.headers._headers:
        if h[0] == 'Set-Cookie':
            opener.addheaders.append(('Cookie', h[1]))

#step 1, obtain login page
login_url="https://login.microsoftonline.com/tfp/461858f4-9c0d-46e0-a9e6-aefc4889aad6/b2c_1_sign_up_or_sign_in/oauth2/v2.0/authorize/?client_id=278423c1-fb89-414b-9f6e-b9db317ee442&redirect_uri=https%3a%2f%2fis3.watercare.co.nz%2fcore%2f&response_mode=form_post&response_type=id_token&scope=openid&state=OpenIdConnect.AuthenticationProperties%3dP7jWnHuBn0WFQaVT_Dr_mMuUS_BA6uFKeXwbbP4ck9xNkI7fHakmLiw1ktIuSRz9kkp13M67QuAuC_HgtgvZruta5ozgRvLcMNa76TCFRirCx_qdrquJT6GbS36IYBGk4kuPDpkVsC3bV6nsor4gUpp88GmGik3DiGgHJeaE7-i-y41OzjF-Vpg0RB0H4EH_9AtfO3VyHAhKdasqQVqq-nEpYqiy0FRTIroske6dG0hQyxYpl1VJfvqpr2bCu8EmZa1dNUFObvnXNxvPc75Q0BF4y-IN9Z-wAVlKWmR4F6M&nonce=636926391177856153.ZjZmMjkxNWYtZTY2Yy00ODQ0LThjNTItODdmYzJiY2NkMDM3ZjAyMzU2YmMtMzI0OS00NWIzLTgwOGEtNDNiYTRlZDc0ZjVm"

# openner=urllib.request.build_opener()
# f = openner.open(login_url)
# page=f.read().decode('utf-8')

response=requests.get(login_url)
page=response.text
StateProperties = searchFromPage(page, 
                                """(?<=StateProperties\=).*?(?="\,"pageViewId)""",
                                "Succeed to get StateProperties",
                                "Failed to get StateProperties from login page"
                                )
if StateProperties is None:
    exit()

XCSRFTOKEN = searchFromPage(page, 
                            """(?<="csrf"\:").*?(?="\,"transId)""",
                            "Succeed to get XCSRFTOKEN",
                            "Failed to get XCSRFTOKEN from login page"
                            )
if XCSRFTOKEN is None:
    exit()

pageViewId = searchFromPage(page, 
                            """(?<=\,"pageViewId"\:").*?(?="\,"suppressElementCss")""",
                            "Succeed to get pageViewId",
                            "Failed to get pageViewId from login page"
                            )
if pageViewId is None:
    exit()

#step 2, post username password
url="https://login.microsoftonline.com/461858f4-9c0d-46e0-a9e6-aefc4889aad6/B2C_1_sign_up_or_sign_in/SelfAsserted?tx=StateProperties=" \
    + StateProperties \
    + "&p=B2C_1_sign_up_or_sign_in"
#data="request_type=RESPONSE&logonIdentifier=paula%40bodycorpadmin.co.nz&password=Paula005"
# data=urllib.parse.urlencode({'request_type': 'RESPONSE', 'logonIdentifier': username, 'password': password})
# data=data.encode('ascii')
# handleCookies(openner, f)
# with openner.open(url, data) as f:
#     response=f.read().decode('utf-8')

data={'request_type': 'RESPONSE', 'logonIdentifier': username, 'password': password}
headers={}
handleCookies(response, headers)
response=requests.post(url, data=data)
page=response.text
print(response)
