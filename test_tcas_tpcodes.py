"""

python manage.py generate_tpcodes -s 1 -n 10000

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
        url = f'{self.settings["api_root"]}/products/uri/allocate/'
        print(f"requesting {url}")
        r = requests.post(
            url,
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
                    "uris":uris,
                    "date_packed":datetime.utcnow().isoformat()
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


    def run(self):
        self.get_product_list()
        self.allocate_uris()
        self.create_batch()
        self.activate_uris()
        self.associate_uris_to_carton()

    def test_token(self):
        print(f"test_token")
        r = requests.get(f'{self.settings["api_root"]}/products/list/',headers=self._get_headers())
        print(r.json())
        self.stash_key = r.json()['results'][0]['stash']['stash_key']
        print(f"stash_ket set to {self.stash_key}")
        return r.json()

ENVS = {
    "local" : {
        "api_root" : "http://127.0.0.1:8000/api",
        "token" : "testforaccount05876kdjbvzmvaz",
        "product_id": 13,
        "number": 10
    },
    "staging_camperdown_Yashili_tp_codes_test" : {
        "api_root" : "https://api-staging.trust.codes/api",
        "token" : "kentest_camperdown_bufdsybdf6732vdystavd",
        "product_id": 484,
        "number": 10
    },
    "prod_camperdown_Yashili_tp_codes_test" : {
        "api_root" : "https://api.trust.codes/api",
        "token" : "cpd_tpcodes_ZCVE82eAM7WLij3gfZZLvRpUrhpb",
        "product_id": 0,
        "number": 0
    },
}

# Mini_TCAS_Tpcodes(ENVS,'staging_camperdown_Yashili_tp_codes_test').run()

Mini_TCAS_Tpcodes(ENVS,'prod_camperdown_Yashili_tp_codes_test').test_token()



"""
YASH01, Camperdown Yashili Product (Generic)
DG01, Doraler FSANZ Step 1 800g
DG02, Doraler FSANZ Step 2 800g
DG03, Doraler FSANZ Step 3 800g
DL41, Doraler Step 1 400g PRC
DL01, Doraler Step 1 800g PRC
DL42, Doraler Step 2 400g PRC
DL02, Doraler Step 2 800g PRC
DL43, Doraler Step 3 400g PRC
DL03, Doraler Step 3 800g PRC
DL04, Doraler Step 4 400g
DL04_800G, Doraler Step 4 800g

next step: create sku in platform.
prod created: YASH01, DG01, DG02
"""