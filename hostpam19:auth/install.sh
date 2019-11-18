#! /bin/bash
useradd local1
useradd local2
useradd local3
echo "local1" | passwd --stdin local1
echo "local2" | passwd --stdin local2
echo "local3" | passwd --stdin local3
cp /opt/hostpam/login.defs /etc/login.defs
cp /opt/hostpam/system-auth /etc/pam.d/system-auth
cp /opt/hostpam/pam_mount.conf.xml /etc/security/pam_mount.conf.xml
cp /opt/hostpam/nslcd.conf /etc/nslcd.conf
cp /opt/hostpam/nsswitch.conf /etc/nsswitch.conf
