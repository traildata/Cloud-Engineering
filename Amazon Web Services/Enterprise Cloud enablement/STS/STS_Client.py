import boto3
import json

client = boto3.client('sts')

response = client.get_federation_token(
    Name='admin',
    
    PolicyArns=[
        {
            'arn': 'arn:aws:iam::aws:policy/AdministratorAccess'
        },
    ],
    DurationSeconds=900
    
)

print (type(json.dumps(response,default=str)))