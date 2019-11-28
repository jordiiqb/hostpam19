# HOSTPAM
FROM fedora:27
LABEL version="1.0"
LABEL author="Jordi Quirós Berbel" 
LABEL subject="hostpam19"
RUN dnf install -y passwd pam_mount authconfig nss-pam-ldapd
RUN mkdir /opt/hostpam
COPY * /opt/hostpam/
RUN chmod +x /opt/hostpam/startup.sh
WORKDIR /opt/hostpam
CMD /opt/hostpam/startup.sh

