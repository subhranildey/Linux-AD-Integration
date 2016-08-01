#!/bin/bash
cd ~
wget 'http://download.beyondtrust.com/PBISO/8.0.0.2016/linux.deb.x64/pbis-open-8.0.0.2016.linux.x86_64.deb.sh'
chmod +x pbis-open-8.0.0.2016.linux.x86_64.deb.sh
bash 'pbis-open-8.0.0.2016.linux.x86_64.deb.sh'
shutdown now -r

