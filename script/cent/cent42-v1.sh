#!/bin/bash
### BEGIN INIT INFO
# Provides:          test
# Required-Start:    $local_fs $network
# Required-Stop:     $local_fs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: test
# Description:       test daemon
### END INIT INFO
if [ "$UID" -ne 0 ]; then
    echo "You must be root to run this script"
    exit 1
fi

sudo su

#apache
service apache2 start

#open web


#mount
mkdir /mnt/nas/smms_output -p
yum install -y cifs-utils
mount -t cifs //10.0.0.148/smms_output /mnt/nas/smms_output -o user=Sln_Server_Account,pass=Tmxmfltm\!234,rw,vers=1.0

#set svr root
SVR_ROOT=/mnt/nas/smms_output

# install node
# install pm2 global

#start pm2
pm2 serve pm2 serve $SVR_ROOT 58022 --name "nassvr_code42_1"

