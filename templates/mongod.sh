#!/bin/bash

/data/mongodb/bin/mongo 127.0.0.1:9927 <<EOF
rs.initiate({"_id":"mymongo","members":[ {"_id":1, "host":"192.168.17.41:9927", "priority":1 }, {"_id":2, "host":"192.168.17.42:9927", "priority":1 }, {"_id":3, "host":"192.168.17.43:9927", "priority":1 } ]})
EOF


