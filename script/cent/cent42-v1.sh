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
mount -t cifs //10.0.0.148/smms_output /mnt/nas/smms_output -o user=Sln_Server_Account,pass=Tmxmfltm\!234,rw,vers=1.0

