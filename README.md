## F5 SDK-Python
This sample is how to use the F5 Python SDK to manage F5 BIG-IP at the AWS environment and will be prepared other public cloud which GCP, Azuer and so on.

## Google colab
The main code(f5sdk_Demo.ipynb) is working on google colab and most of the other sources are saved in google drive. This is easy to share and colloraborate to other colleguase 

## How the code works?
<img src="https://github.com/jungcheolkwon/gcolab/blob/main/images/f5sdk.png" width="80%" height="300"/> <br>
Download all the files then save them into your google drive. you need to change "Colab Notebooks" directory name to "Colab" or change directory info from the each code like this. __/content/gdrive/MyDrive/Colab/aws_acl.sh" ==> /content/gdrive/MyDrive/Colab Notebooks/aws_acl.sh"__ 

## What are the files?
 - f5sdk_Demo.ipynb ; main code file
 - manager.pem ; private ssh-key to access the management host
 - 

## What do you need to change in the files?
 - as3-xx.json ; as3 template files which you need to update with your own environment such as partition name, host info etc
 - aws_acl.sh ; add colab host ipaddress to security group in each regions and need to update your own ids 
 - credential.txt ; big-ip user and password and need to update your own user/pwd
 - hosts.txt ; big-ip ipaddress or FQDN and need to update your own device info
 - mgmt.txt ; management host ipaddress or FQDN and need to update your own host info
 
## Run the code stey by step

- Prerequisites <br>
> install packages <br>
<img src="https://github.com/jungcheolkwon/gcolab/blob/main/images/lession3_0.png" width="80%" height="300"/><br>
> add colab host ipaddress to the Security Group <br>
<img src="https://github.com/jungcheolkwon/gcolab/blob/main/images/lession3_0.png" width="80%" height="300"/><br>

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
<img src="https://github.com/jungcheolkwon/gcolab/blob/main/images/lession5_0.png" width="80%" height="300"/><br>
<img src="https://github.com/jungcheolkwon/gcolab/blob/main/images/lession5_1.png" width="80%" height="300"/><br>
<img src="https://github.com/jungcheolkwon/gcolab/blob/main/images/lession5_2.png" width="80%" height="300"/><br>
<img src="https://github.com/jungcheolkwon/gcolab/blob/main/images/lession5_3.png" width="80%" height="300"/><br>

- lession6 <br>
<img src="https://github.com/jungcheolkwon/gcolab/blob/main/images/lession6_1.png" width="80%" height="300"/><br>



