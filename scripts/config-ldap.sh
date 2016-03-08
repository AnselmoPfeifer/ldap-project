#File created by Anselmo Pfeifer
# Reference www.anselmopfeifer.com

#!/bin/bash
service slapd stop
rm -f /etc/ldap/ldap.conf

cp files/etc/ldap/ldap.conf /etc/ldap/
cp files/etc/ldap/slapd.conf /etc/ldap
service slapd start
