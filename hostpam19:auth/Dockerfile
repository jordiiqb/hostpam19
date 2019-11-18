# HOSTPAM
FROM fedora:27
LABEL version="1.0"
LABEL author="Jordi Quirós Berbel" 
LABEL subject="hostpam19"
RUN dnf install -y procps vim iproute nmap util-linux-user-2.30.2-3.fc27.x86_64 finger passwd pam_mount nfs-utils nss-pam-ldapd
RUN mkdir /opt/hostpam
COPY * /opt/hostpam/
RUN chmod +x /opt/hostpam/startup.sh
WORKDIR /opt/hostpam
#CMD /opt/hostpam/startup.sh

