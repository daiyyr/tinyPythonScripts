from smb.SMBConnection import SMBConnection
import os

class Samba:

    def connect(self):
        self._conn = SMBConnection(
			self.remote_username,
			self.remote_password,
			self.local_machine_alias,
			self.remote_machine_name,
			use_ntlm_v2 = True)
        assert self._conn.connect(self.remote_ip_address, 139)

    def __init__(self, remote_username, remote_password, local_machine_alias, remote_machine_name, remote_ip_address):
        self.remote_username=remote_username
        self.remote_password=remote_password
        self.local_machine_alias=local_machine_alias
        self.remote_machine_name=remote_machine_name
        self.remote_ip_address=remote_ip_address
        self.connect()

    """
    remote_file_path: started with '/', related to remote_shared_folder_name
    for example:
        fetch_file(/src/tce/'rm_data_from_invoke_xxxxxxxx'.csv, 'sff_db', '/nj/rm_data_from_invoke_xxxxxxxx.csv')
    """
    def fetch_file(self, local_file_path, remote_shared_folder_name, remote_file_path, replace=False):
        self.connect()
        local_folder = os.path.dirname(local_file_path)
        if not os.path.exists(local_folder):
            os.makedirs(local_folder)
        if not replace and os.path.isfile(local_file_path):
            raise Exception(f'Local file exists: {local_file_path}')
        else:
            with open(local_file_path, 'wb') as fp:
                file_attributes, filesize = self._conn.retrieveFile(remote_shared_folder_name, remote_file_path, fp, timeout=30)
        return file_attributes, filesize

    """
    remote_file_path: started with '/', related to remote_shared_folder_name
    """
    def delete(self, remote_shared_folder_name, remote_file_path_pattern, delete_matching_folders=False):
        self.connect()
        self._conn.deleteFiles(remote_shared_folder_name, remote_file_path_pattern, delete_matching_folders=delete_matching_folders, timeout=30)

    """
    Return: A list of smb.base.SharedFile instances
    remote_file_path: started with '/', related to remote_shared_folder_name
    """
    def listPath(self, remote_shared_folder_name, remote_file_path_pattern):
        self.connect()
        return self._conn.listPath(remote_shared_folder_name, remote_file_path_pattern)





s = Samba(
        'sff_rm_sync@TOE.testing',
        '3a}Tes+^N.V+8zt)',
        'tcas',
        'EC2AMAZ-3T8D89M',
        'ec2-3-25-173-222.ap-southeast-2.compute.amazonaws.com'
        )
tlc_shared_folder_name = 'sff_db'
target_file = 'rm_data_from_invoke_20210609.csv'
target_folder = '/nj'
local_folder = '/Users/teemo/Documents/Dev/scripts/the_lamb_company_db_scripts/nj/'
l = s.listPath(tlc_shared_folder_name, target_folder)
for f in l:
    print(f"{f.filename}, isDirectory: {f.isDirectory}, size {f.file_size}")
    print(f.file_size*0.95)

print
_,size = s.fetch_file(os.path.join(local_folder, target_file), tlc_shared_folder_name, os.path.join(target_folder,target_file),True)
print(size)
s.delete(tlc_shared_folder_name, os.path.join(target_folder,target_file))



