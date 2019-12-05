# HOSTPAM
FROM fedora:27
LABEL version="1.0"
LABEL author="Jordi Quirós Berbel" 
LABEL subject="hostpam19  "
RUN dnf install -y passwd pam_mount authconfig nss-pam-ldapd samba-client cifs-utils
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh
WORKDIR /opt/docker
CMD /opt/docker/startup.sh

