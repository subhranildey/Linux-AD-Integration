# Linux AD Integration

1. $ hostname -f should return fqdn
2. IP should set properly

#Usage

$ sudo -s

$ cd

$ apt install git

$ git clone https://github.com/subhranildey/Linux-AD-Integration.git

$ cd Linux-AD-Integration

$ chmod +x *.sh

$ ./AD-integration1.sh

# Go to Windows

1. Create a new global security group called “LinuxAdmins” (without the quotes)

2. Add the built-in “Domain Admins” group to the newly created “LinuxAdmins” group

$ ./AD-integration2.sh /etc/sudoers

$ ./AD-integration3.sh
