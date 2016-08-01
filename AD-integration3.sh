#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root."
   exit 1
fi

cd ~
/opt/pbis/bin/domainjoin-cli join globetouch.in administrator@globetouch.in
#
/opt/pbis/bin/config UserDomainPrefix globetouch
/opt/pbis/bin/config AssumeDefaultDomain true
/opt/pbis/bin/config LoginShellTemplate /bin/bash
/opt/pbis/bin/ad-cache --delete-all
/opt/pbis/bin/update-dns
#
sed -i 's/sufficient/[success=ok default=ignore]/' /etc/pam.d/common-session
shutdown now -r
