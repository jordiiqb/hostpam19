#! /bin/bash
useradd anna
useradd jordi
echo "anna" | passwd --stdin anna
echo "jordi" | passwd --stdin jordi

tar xvzf python-pam-1.8.2.tar.gz &> /dev/null && echo "#### Descomprimint pyhton-pam ####"
tar xvzf pam-python-1.0.7.tar.gz &> /dev/null && echo "### Descomprimint pyhton-pam ####"

pip install python-pam
cp /opt/docker/features.h /usr/include/features.h
cd pam-python-1.0.7 && make &> /dev/null && cd ..
cp pam-python-1.0.7/src/pam_python.so /usr/lib64/security/.
cp pam-python-1.0.7/doc/pam_permit.py /opt/docker/.
cp /opt/docker/chfn /etc/pam.d/chfn
cp /opt/docker/login.defs /etc/login.defs

