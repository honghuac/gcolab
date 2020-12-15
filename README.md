## F5 SDK-Python
This sample is how to use the F5 Python SDK to manage F5 BIG-IP at the AWS environment and will be prepared other public cloud which GCP, Azuer and so on.

## Google colab
The main code(f5sdk_Demo.ipynb) is working on google colab and most of the other sources are saved in google drive. This is easy to share and colloraborate to other colleguases.

## How the code works?
<img src="https://github.com/jungcheolkwon/gcolab/blob/main/images/f5sdk.png" width="80%" height="300"/> <br>
Download all the files then save them into your google drive. you need to change "Colab Notebooks" directory name to "Colab" or change directory info from the each code like this.<br>
__/content/gdrive/MyDrive/Colab/aws_acl.sh" ==> /content/gdrive/MyDrive/Colab Notebooks/aws_acl.sh"__ <br><br>

The code is working on google colab by default but if you want to use them in your local environment you can do it with some code updating like file location.
All of the requirement packages will be installed before lession starting and add the colab ipaddress to the Security Group in each regions. The colab ipaddress will be copied to the management host then will be removed it automatically from the Security Group at the midnight by cron job. you need to change ssh port to __8443__ in your management host. 

## What are the files and need to change in the files?
 - as3-xx.json ; as3 template files which you need to update with your own environment such as partition name, host info etc
 - auto_remove.sh ; remove colab host ipaddress from each Security Group and need to update ids in the file and update crontab like end of the file and AWS access key and secret key installed in the host.
 - aws_acl.sh ; add colab host ipaddress to Security Group in each regions and need to update your own ids, mgmt host and AWS STS is using to access AWS environment in here but you can use access_key and secret_key only after update below lines in the file
 ```
  read -p 'Access_key_ID: ' accesskey
  read -p 'Secret_key: ' secretkey
  read -p 'Session_Token: ' Session_Token
  export AWS_ACCESS_KEY_ID=$accesskey
  export AWS_SECRET_ACCESS_KEY=$secretkey
  export AWS_SESSION_TOKEN=$Session_Token
```
 - credential.txt ; big-ip user and password and need to update your own user/pwd. if you don't want to save credential in the file, you can remove comment from each lession user and pwd then add comment(#) from with open to user = cred[0] line like below.
 ```
  #with open('/content/gdrive/MyDrive/Colab/credential.txt', "r") as f:
  #  cred = f.read().splitlines() 
  #  user = cred[0];   pwd = cred[1]

  user = input('Enter username:')
  pwd = getpass('Enter admin password') 
 ```
 - hosts.txt ; big-ip ipaddress or FQDN and need to update your own device info
 - f5sdk_Demo.ipynb ; main code file
 - manager.pem ; private ssh-key to access the management host. you can create the file like this( openssl rsa -in ~/.ssh/id_rsa -out manager.pem ) after ssh-keygen -t rsa in your management host.
 - mgmt.txt ; management host ipaddres or FQDN and need to update your own host info
 
## Run the code stey by step

- Prerequisites <br>
> install packages <br>
<img src="https://github.com/jungcheolkwon/gcolab/blob/main/images/pre1_0.png" width="80%" height="300"/><br>
> add colab host ipaddress to the Security Group <br>
<img src="https://github.com/jungcheolkwon/gcolab/blob/main/images/pre2_0.png" width="80%" height="300"/><br>
<img src="https://github.com/jungcheolkwon/gcolab/blob/main/images/pre2_1.png" width="80%" height="300"/><br>

- lession1 <br>
<img src="https://github.com/jungcheolkwon/gcolab/blob/main/images/lession1_0.png" width="80%" height="300"/><br>

- lession2 <br>
<img src="https://github.com/jungcheolkwon/gcolab/blob/main/images/lession2_0.png" width="80%" height="300"/><br>
<img src="https://github.com/jungcheolkwon/gcolab/blob/main/images/lession2_1.png" width="80%" height="300"/><br>

- lession3 <br>
<img src="https://github.com/jungcheolkwon/gcolab/blob/main/images/lession3_0.png" width="80%" height="300"/><br>

- lession4 <br>
<img src="https://github.com/jungcheolkwon/gcolab/blob/main/images/lession4_0.png" width="80%" height="300"/><br>
<img src="https://github.com/jungcheolkwon/gcolab/blob/main/images/lession4_1.png" width="80%" height="300"/><br>

- lession5 <br>
<img src="https://github.com/jungcheolkwon/gcolab/blob/main/images/lession6_1.png" width="80%" height="300"/><br>

- lession6 <br>
<img src="https://github.com/jungcheolkwon/gcolab/blob/main/images/lession5_0.png" width="80%" height="300"/><br>
<img src="https://github.com/jungcheolkwon/gcolab/blob/main/images/lession5_1.png" width="80%" height="300"/><br>
<img src="https://github.com/jungcheolkwon/gcolab/blob/main/images/lession5_2.png" width="80%" height="300"/><br>
<img src="https://github.com/jungcheolkwon/gcolab/blob/main/images/lession5_3.png" width="80%" height="300"/><br>
