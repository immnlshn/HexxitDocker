#!/bin/bash

cd /hexxit/

if [ -z $(ls -A /hexxit/) ]
then
   wget -O /tmp/Hexxit.zip http://servers.technicpack.net/Technic/servers/hexxit/Hexxit_Server_v1.0.10.zip
   unzip /tmp/Hexxit.zip -d /hexxit/
   rm /tmp/Hexxit.zip
   chmod -R 777 /hexxit/
   rm launch.*
fi
exec java -jar 'Hexxit.jar' nogui
