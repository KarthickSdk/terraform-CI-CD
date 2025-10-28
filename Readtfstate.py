import boto3

s3 = boto3.client('s3')

def read_tf_state(bucket_name, key):
    response = s3.get_object(Bucket=bucket_name, Key=key)
    for line in response['Body'].read().decode().splitlines():
        if '"instance_type": "t2.micro"' in line:
            print(line)
        elif '"instance_type": "t3.micro"' in line:
            print("Instance type is t3.micro")

if __name__ == "__main__":
    bucket = 'mytest-s3-sdk1'
    key = 'terraform.tfstate'  # Update this to your actual key/path
    read_tf_state(bucket, key)

