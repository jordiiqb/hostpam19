#! /bin/bash
useradd local1
useradd local2
useradd local3
echo "local1" | passwd --stdin local1
echo "local2" | passwd --stdin local2
echo "local3" | passwd --stdin local3
cp /opt/hostpam/nslcd.conf /etc/nslcd.conf
cp /opt/hostpam/nsswitch.conf /etc/nsswitch.conf
authconfig --enableshadow --enablelocauthorize --enableldap --enableldapauth --enablemkhomedir --ldapserver='ldaperver' --ldapbase='dc=edt,dc=org' --updateall
