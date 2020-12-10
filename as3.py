 {
     "class": "AS3",
     "action": "deploy",
     "persist": true,
     "declaration": {
         "class": "ADC",
         "schemaVersion": "3.20.0",
         "label": "Sample 1",
         "remark": "Simple HTTP Service with Round-Robin Load Balancing",
         "Sample_01": {
             "class": "Tenant",
             "A1": {
                 "class": "Application",
                 "service": {
                     "class": "Service_HTTP",
                     "virtualAddresses": [
                         "10.0.1.10"
                     ],
                     "pool": "web_pool"
                 },
                 "web_pool": {
                     "class": "Pool",
                     "monitors": [
                         "http"
                     ],
                     "members": [
                         {
                             "servicePort": 80,
                             "serverAddresses": [
                                 "192.0.1.10",
                                 "192.0.1.11"
                             ]
                         }
                     ]
                 }
             }
         }
     }
 }