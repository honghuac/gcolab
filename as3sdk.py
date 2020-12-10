from f5sdk.bigip.extension import AS3Client


def MyFunction(action,location):
    mgmt_client = ManagementClient(ip, user='admin', password='PythoN@3')
    extension_client = AS3Client(mgmt_client)
    
    if action == 'add':
      if location == 'SG':
        extension_client.service.create(config_file='/content/gdrive/MyDrive/Colab/as3-sg2.json')
        print ("AS3 Template is just loaded at"+ " "+location)

      if location == 'DE':
        extension_client.service.create(config_file='/content/gdrive/MyDrive/Colab/as3-de.json')
        print ("AS3 Template is just loaded at"+ " "+location)

      if location == 'US':
        extension_client.service.create(config_file='/content/gdrive/MyDrive/Colab/as3-us.json')
        print ("AS3 Template is just loaded at"+ " "+location)
      
    if action == 'del':
      if location == 'SG':
        extension_client.service.create(config_file='/content/gdrive/MyDrive/Colab/as3_del.json')
        print ("AS3 Configuration is just deleted at"+ " "+location)

      if location == 'DE':
        extension_client.service.create(config_file='/content/gdrive/MyDrive/Colab/as3_del.json')
        print ("AS3 Configuration is just deleted at"+ " "+location)

      if location == 'US':
        extension_client.service.create(config_file='/content/gdrive/MyDrive/Colab/as3_del.json')
        print ("AS3 Configuration is just deleted at"+ " "+location)
    return
