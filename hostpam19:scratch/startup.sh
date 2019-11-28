#! /bin/bash

bash /opt/hostpam/install.sh
/sbin/nscd
/sbin/nslcd -d

