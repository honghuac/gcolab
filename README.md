## F5 SDK-Python
This sample is how to use the F5 Python SDK to manage F5 BIG-IP at the AWS environment and will be prepared other public cloud which GCP, Azuer and so on.

## Google colab
The main code(f5sdk_Demo.ipynb) is working on google colab and most of the other sources are saved in google drive. This is easy to share and colloraborate to other colleguase 

## How the code works?
[[https://github.com/jungcheolkwon/gcolab/blob/master/images/f5sdk.png]]

## What are the files?
 - f5sdk_Demo.ipynb
 - manager.pem
 - 

## What do you need to change in the files?
 - as3-xx.json
 - aws_acl.sh
 - credential.txt
 - hosts.txt
 - mgmt.txt
 
## Run the code stey by step


```sh
$ cd ~/Docker
$ git clone https://github.com/Azure/caf-terraform-landingzones.git
$ cd landingzones/landingzones/landingzone_vdc_demo/
$ git clone https://github.com/jungcheolkwon/blueprint.git
```

# Build landingzone with BIG-IP (in rover container)
After download the source files, open workspace from VSC.
![example](https://github.com/jungcheolkwon/blueprint/blob/master/images/openworkspace0.png)<br>

