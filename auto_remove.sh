#!/bin/bash

start_day=`date +"%m-%d-%y_%H:%M:%S"`
echo "started on $start_day"
filename='added_ip'
while read delip;
do
    echo "Delip is $delip"
    export AWS_DEFAULT_REGION=us-east-1
    ids='sg-0961c5c4566'
    echo "us-east-1"
    aws ec2 revoke-security-group-ingress --group-id $ids --ip-permissions IpProtocol=tcp,FromPort=8443,ToPort=8443,IpRanges=[{CidrIp="$delip/32"}]
    sleep 1

    export AWS_DEFAULT_REGION=eu-central-1
    ids='sg-08377993f'
    echo "eu-central-1"
    aws ec2 revoke-security-group-ingress --group-id $ids --ip-permissions IpProtocol=tcp,FromPort=8443,ToPort=8443,IpRanges=[{CidrIp="$delip/32"}]
    sleep 1

    export AWS_DEFAULT_REGION=ap-southeast-1
    ids='sg-0246306c43c6'
    echo "ap-southeast-1"
    aws ec2 revoke-security-group-ingress --group-id $ids --ip-permissions IpProtocol=tcp,FromPort=8443,ToPort=8443,IpRanges=[{CidrIp="$delip/32"}]
done < $filename
end_day=`date +"%m-%d-%y_%H:%M:%S"`
echo "ended on $end_day"


##add the below line in the crontab and need to update the path as yours
#0 * * * *  cd /home/ubuntu && ./auto_remove.sh >> /tmp/remove.log 2>&1   
