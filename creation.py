def MyFunction(location,pip,vip):
    my_node = location + "-NODE"
    ltm.nodes.node.create(partiion='Common', name=my_node, address=pip, monitors='http')

    my_pool = location + "-POOL"
    params = {
        'name': my_pool,
        'partition': 'Common',
        'monitor': 'http'
    }
    ltm.pools.pool.create(**params)

    member_port = '80'
    pool = ltm.pools.pool.load(name=my_pool)
    pool.members_s.members.create(partition='Common', name=my_node + ":" + member_port)

    vs_name = location + "-VS"
    params = {
        'name': vs_name,
        'partition': 'Common',
        'source': '0.0.0.0/0',
        'destination': '{}:{}'.format(vip, str(80)),
        'mask': '255.255.255.255',
        'description': 'Created by F5 SDK',
        'protocol': 'tcp',
        'pool': my_pool,
        'profiles': [
          {'name': 'http'},
          {'name': 'tcp'}           
        ],
        'sourceAddressTranslation': {'type': 'automap'},
        'vlansEnabled': True,
        'vlans': ['/Common/internal']
    }
    ltm.virtuals.virtual.create(**params)

    print ("Created objects at" + "  " +location) 
    print ("   ")
    return