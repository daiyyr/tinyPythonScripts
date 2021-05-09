"""
The script is to test the process of tpcodes/uris. 4 steps for this and all requests are from account token.
Prepare:
1. the endpoint to the plarform. for exmaple, https://api-staging.trust.codes/api
2. account token with access to at least one product
3. setup a stash for the product

In the env of 
1. GET a product list 
2. Allocate URIs again the stash of the product
3. Create a batch
4. Acitvate URIs to the batch
5. Associate URIs with cartons
"""
import time
import requests
import json
from datetime import datetime

generate_request_id = lambda seq='': f"{seq or str(int(time.time()))}"  # Temporary until requests can be len>10

class Mini_TCAS_Tpcodes:
    settings = {
        "api_root" : "http://127.0.0.1:8000/api",
        "token" : "testforaccount05876kdjbvzmvaz",
        "product_id": 13
    }
    batch_id = None
    stash_key = None
    inventory = []
    def __init__(self, ENVS, env):
        self.settings = ENVS[env]

    def _get_headers(self):
        return {
            "authorization": f"token {self.settings['token']}",
            "Content-Type": "application/json; charset=utf-8",
        }

    def get_product_list(self):
        print(f"get_product_list")
        r = requests.get(f'{self.settings["api_root"]}/products/list/?id={self.settings["product_id"]}',headers=self._get_headers())
        print(r.json())
        self.stash_key = r.json()['results'][0]['stash']['stash_key']
        print(f"stash_ket set to {self.stash_key}")
        return r.json()


    def allocate_uris(self):
        print(f"allocate_uris")
        r = requests.post(
            f'{self.settings["api_root"]}/products/uri/allocate/',
            headers=self._get_headers(),
            data=json.dumps({"number":self.settings['number'],"stash_key":self.stash_key})
            )
        print(r.json())
        self.inventory = r.json()['results']
        print(f"inventory charged to {len(self.inventory)}. 1st is {self.inventory[0]}")
        return r.json()

    def create_batch(self):
        print(f"create_batch")
        r = requests.post(
            f'{self.settings["api_root"]}/products/batch/',
            headers=self._get_headers(), 
            data=json.dumps({"product":self.settings['product_id'],"number":datetime.now().isoformat()})
            )
        print(r.json())
        self.batch_id = r.json()['id']
        print(f"batch_id set to {self.batch_id}")
        return r.json()

    def activate_uris(self):
        print(f"activate_uris")
        data = {
            "uris" : []
        }
        i=1
        for uri in self.inventory:
            data['uris'].append(
                {
                    "uri":uri,
                    "sequence": i,
                    "date_approved":datetime.now().isoformat()
                }
            )
            i = i +1
        r= requests.post(
            f'{self.settings["api_root"]}/products/batch/{self.batch_id}/activate_uris/',
            headers=self._get_headers(), 
            data=json.dumps(data))
        print(r.json())
        return r.json()

    def associate_uris_to_carton(self):
        print(f"associate_uris_to_carton")
        data={
            "associate_data": []
        }
        units_per_carton = 3
        carton_id_seq = 1
        for i in range(0,len(self.inventory),units_per_carton):
            carton_id = f"CARTON{carton_id_seq:05d}"
            uris = []
            for j in range(i, min(i+units_per_carton,len(self.inventory)-1)):
                uris.append(self.inventory[j])
            data['associate_data'].append(
                {
                    "carton_id":carton_id,
                    "uris":uris
                }
            )
            carton_id_seq = carton_id_seq +1
        print(f"{data}")
        r = requests.post(
            f'{self.settings["api_root"]}/logistics/associate/',
            headers=self._get_headers(), 
            data=json.dumps(data)
            )
        print(r.json())
        return r.json()



    def get_trustcodes(self, count, request_id, protocol_and_hostname, max_retries=10, retry_wait=10):
        """
        Synchronous fetch of $count codes from cloud into our local stash.
        If codes from current request_id are not ready, then (for now) keep polling up to $max_retries,
        with $retry_wait seconds in between.

        """
        codes_available = False
        retries = 0
        while retries <= max_retries and not codes_available:
            if retries:
                print(f"retrying for the {retries} time")
            status, info = self.fetch_codes_status()
            print(f"status is {status}, info is {info}")
            if info['code'] == 200:
                codes_available = True
            if codes_available:
                print('sending request to create codes ... ')
                resp = self.create_codes(count, request_id, protocol_and_hostname)
                if resp.status_code != 200:
                    print(f'Issue creating codes, received status {resp.code}')
                return self.check_and_fetch(request_id, max_retries, retry_wait)
            retries += 1
            time.sleep(retry_wait)
        print(f"Checking status prior to creating codes, reach max retry {retries}")
        return None


    def check_and_fetch(self, request_id, max_retries=10, retry_wait=10):
        """
        check status before fetch
        """
        codes_available = False
        retries = 0
        while retries <= max_retries and not codes_available:
            status, info = self.fetch_codes_status()
            print(f"status is {status}, info is {info}")
            if info['code'] == 200:
                codes_available = True
            if codes_available:
                return self.fetch_codes(request_id)
            retries += 1
            time.sleep(retry_wait)
        print(f"Checking status prior to fetching codes, reach max retry {retries}")
        return None

    def fetch_codes_status(self):
        """
        Fetch the status of code generation
        """
        codes_endpoint = f"{self.settings['api_root']}/api/products/blank/pregenerate/"
        resp = requests.get(codes_endpoint, headers=self._get_headers())
        print(f"requested: {codes_endpoint}")
        print(f"received {resp} when fetching codes")
        return (resp.status_code, json.loads(resp.content))


    def create_codes(self, count, request_id, protocol_and_hostname):
        req_url = f"{self.settings['api_root']}/api/products/blank/pregenerate/"
        data = json.dumps({'number': count, 'protocol_and_hostname': protocol_and_hostname, "request_id": request_id})
        resp = requests.post(url=req_url, headers=self._get_headers(), data=data)
        return resp


    def fetch_codes(self, request_id):
        """
        Use pagination features to fetch all codes, page by page until no further pages remain.
        """
        next_page_url = f"{self.settings['api_root']}/api/products/blank/fetch/?request_id={request_id}"
        codes_accum = []
        with requests.Session() as restsession:
            restsession.headers = self._get_headers()
            while next_page_url:
                resp = restsession.get(next_page_url)
                try:
                    dat = json.loads(resp.content)
                    if dat['next'] is None:
                        # might need to take a quick nap here to allow the server to get ready with our codes
                        time.sleep(5)
                        resp = restsession.get(next_page_url)
                        dat = json.loads(resp.content)
                    dat = json.loads(resp.content)
                    next_page_url = dat['next']
                    # we need to ensure we can jsonafy this by ensuring all values are wrapped with '
                    # currently we get back unwrapped bool and None values which causes problems 
                    # further down the line
                    for res in dat['results']:
                        # clear the url as we don't know what product will be associated with this code
                        res['url'] = ''
                        for k, v in res.items():
                            if isinstance(v, type(None)) or isinstance(v, bool):
                                res[k] = str(v)
                                #TODO, this value should be in data instead of url if it's Yashili codes
                                #need API response structures
                        codes_accum.append(res)
                except Exception as exc:
                    print(f"Got exception [{exc}] while fetching codes")
                    next_page_url = None
        return codes_accum


    def activate(self, account_token, codes, cloud_batch_id, api_host):
        """
        A function that takes a list of codes and sends a request to activate them.
        Returns the json response.
        """
        header = {'authorization': f"Token {account_token}", 'content-type': 'application/json'}
        postdata = json.dumps(dict(codes=codes))
        url = f'{api_host}/api/products/batch/{cloud_batch_id}/activate_codes/'
        resp = requests.post(url=url, headers=header, data=postdata)
        return resp.json()




    def run(self):
        generated_and_fetched_codes = self.get_trustcodes(self.settings['number'], generate_request_id(), self.settings['protocol_and_hostname'])
        print(f"generated and fetched codes: {generated_and_fetched_codes}")
        codes = []
        for c in generated_and_fetched_codes:
            codes.append({"qr_id":c["qr_id"]})

        activating_result = self.activate(self.settings['token'], codes, self.settings['batch_id'], self.settings['api_root'])
        print(f"activating_result: {activating_result}")


ENVS = {
    "local" : {
        "api_root" : "http://127.0.0.1:8000",
        "token" : "testforaccount05876kdjbvzmvaz",
        "product_id": 13,
        "number": 10
    },
    "staging_trust_codes_test" : {
        "api_root" : "https://api-staging.trust.codes",
        "token" : "kentest_camperdown_bufdsybdf6732vdystavd",
        "product_id": 484,
        "number": 10
    },
    "prod_trust_codes_test" : {
        "api_root" : "https://api.trust.codes",
        "token" : "eGPdWGEpqGg6nCbCBoLF2Q7qSwks9zWH2WZFkvu3",
        "product_id": 585,
        "protocol_and_hostname": "https://nohk.trust.codes",
        "batch_id": 14562, #batch 0318, now 108 codes in this batch
        "number": 100,
    },
}
Mini_TCAS_Tpcodes(ENVS,'prod_trust_codes_test').run()