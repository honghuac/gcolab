#!/bin/bash 
#updating aws security-group ingress
#edited by JC
#date; 6.dec.2020

read -p 'Access_key_ID: ' accesskey
read -p 'Secret_key: ' secretkey
read -p 'Session_Token: ' Session_Token
export AWS_ACCESS_KEY_ID=$accesskey
export AWS_SECRET_ACCESS_KEY=$secretkey
export AWS_SESSION_TOKEN=$Session_Token

#delete rule
#aws ec2 revoke-security-group-ingress --group-id sg-0edb38f2be97d9966 --ip-permissions IpProtocol=tcp,FromPort=8443,ToPort=8443,IpRanges=[{CidrIp=1.1.1.1/32}]

desc_day=`date +"%m-%d-%y"`
newip=`curl -s checkip.amazonaws.com`
#mgmt is management host
mgmt=1.8.5.6

echo "select region where you want to update"
echo "1=us-east-1, 2=eu-central-1, 3=ap-southeast-1, or all"

read -p 'region: ' reg
if [[ "$reg" -eq 1 ]]
then
	export AWS_DEFAULT_REGION=us-east-1
    ids='sg-0961c5c4566c'
	aws ec2 authorize-security-group-ingress --group-id $ids --protocol tcp --port 8443 --cidr "$newip/32" 
	aws ec2 update-security-group-rule-descriptions-ingress --group-id $ids --ip-permissions '[{"IpProtocol": "tcp", "FromPort": 8443, "ToPort": 8443, "IpRanges": [{"CidrIp": "'$newip'/32", "Description": "google colab_'$desc_day'"}]}]'
	aws ec2 describe-security-groups --group-ids $ids 
elif [[ "$reg" -eq 2 ]]
then
	export AWS_DEFAULT_REGION=eu-central-1
	ids='sg-08377993fd5d'
	aws ec2 authorize-security-group-ingress --group-id $ids --protocol tcp --port 8443 --cidr "$newip/32" 
	aws ec2 update-security-group-rule-descriptions-ingress --group-id $ids --ip-permissions '[{"IpProtocol": "tcp", "FromPort": 8443, "ToPort": 8443, "IpRanges": [{"CidrIp": "'$newip'/32", "Description": "google colab_'$desc_day'"}]}]'
	aws ec2 describe-security-groups --group-ids $ids
elif [[ "$reg" -eq 3 ]]
then
	export AWS_DEFAULT_REGION=ap-southeast-1
	ids='sg-0246306c43c6'
	aws ec2 authorize-security-group-ingress --group-id $ids --protocol tcp --port 8443 --cidr "$newip/32" 
	aws ec2 update-security-group-rule-descriptions-ingress --group-id $ids --ip-permissions '[{"IpProtocol": "tcp", "FromPort": 8443, "ToPort": 8443, "IpRanges": [{"CidrIp": "'$newip'/32", "Description": "google colab_'$desc_day'"}]}]'
	aws ec2 describe-security-groups --group-ids $ids
else
	export AWS_DEFAULT_REGION=us-east-1
	ids='sg-0961c5c4566c'
	aws ec2 authorize-security-group-ingress --group-id $ids --protocol tcp --port 8443 --cidr "$newip/32" 
	aws ec2 update-security-group-rule-descriptions-ingress --group-id $ids --ip-permissions '[{"IpProtocol": "tcp", "FromPort": 8443, "ToPort": 8443, "IpRanges": [{"CidrIp": "'$newip'/32", "Description": "google colab_'$desc_day'"}]}]'
	sleep 2
	export AWS_DEFAULT_REGION=eu-central-1
	ids='sg-08377993fd5d'
	aws ec2 authorize-security-group-ingress --group-id $ids --protocol tcp --port 8443 --cidr "$newip/32" 
	aws ec2 update-security-group-rule-descriptions-ingress --group-id $ids --ip-permissions '[{"IpProtocol": "tcp", "FromPort": 8443, "ToPort": 8443, "IpRanges": [{"CidrIp": "'$newip'/32", "Description": "google colab_'$desc_day'"}]}]'
	sleep 2
	export AWS_DEFAULT_REGION=ap-southeast-1
	ids='sg-0246306c43c6'
	aws ec2 authorize-security-group-ingress --group-id $ids --protocol tcp --port 8443 --cidr "$newip/32" 
	aws ec2 update-security-group-rule-descriptions-ingress --group-id $ids --ip-permissions '[{"IpProtocol": "tcp", "FromPort": 8443, "ToPort": 8443, "IpRanges": [{"CidrIp": "'$newip'/32", "Description": "google colab_'$desc_day'"}]}]'
fi
echo "$newip" >> /content/added_ip
scp -o 'StrictHostKeyChecking no' -P 8443 -i /content/gdrive/MyDrive/Colab/manager.pem added_ip ubuntu@$mgmt:/home/ubuntu
