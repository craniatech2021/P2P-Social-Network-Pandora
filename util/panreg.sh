#!/bin/sh

# The script creates Panreg database table 'active_nodes'

mysql -u ivan -p12345 -h mysql.local.host.ru -f database < ./panreg.sql > panreg.sh.log

