# HOSTPAM
FROM fedora:27
LABEL version="1.0"
LABEL author="Jordi Quirós Berbel" 
LABEL subject="hostpam19"
RUN dnf install -y passwd vim python-pip sphinx python3-sphinx python2-sphinx gcc pam-devel redhat-rpm-config python-devel finger util-linux-user-2.30.2-3.fc27.x86_64 make 
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh
WORKDIR /opt/docker
CMD /opt/docker/startup.sh

