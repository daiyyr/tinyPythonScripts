import boto3
import os
import shutil

def upload_to_s3(path, aws_access_key_id, aws_secret_access_key, s3_bucket, s3_path, move_to_path = None):
    if aws_access_key_id:
        session = boto3.Session(
            aws_access_key_id=aws_access_key_id,
            aws_secret_access_key=aws_secret_access_key,
        )
        s3 = session.resource('s3')
        s3.meta.client.upload_file(Filename=path, Bucket=s3_bucket, Key=s3_path)
    else:
        s3_client = boto3.client('s3')
        s3_client.upload_file(path, s3_bucket, s3_path)

    if move_to_path:
        shutil.move(path, move_to_path)
    return True


filename = 'rm_data_from_invoke_20210608.csv'
re = upload_to_s3(
    '/Users/teemo/Documents/Dev/scripts/the_lamb_company_db_scripts/nj/'+filename,
    '',
    '',
    'tcas-input.trust.codes',
    'sff/202106/' + filename
)
print(f"{re}")
