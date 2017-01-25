#File created by Anselmo Pfeifer
# Reference www.anselmopfeifer.com

#!/bin/bash
apt-get update
apt-get -y install apt-utils
apt-get -y install curl sudo net-tools procps vim
apt-get -y install rsyslog

echo "slapd slapd/root_password password p@ssw0rd999" |debconf-set-selections
echo "slapd slapd/root_password_again password p@ssw0rd999" |debconf-set-selections
echo "slapd slapd/internal/adminpw password p@ssw0rd999" |debconf-set-selections
echo "slapd slapd/internal/generated_adminpw password p@ssw0rd999" |debconf-set-selections
echo "slapd slapd/password2 password p@ssw0rd999" |debconf-set-selections
echo "slapd slapd/password1 password p@ssw0rd999" |debconf-set-selections
echo "slapd slapd/domain string test.zl0.co" |debconf-set-selections
echo "slapd shared/organization string test-bibi" |debconf-set-selections
echo "slapd slapd/backend string HDB" |debconf-set-selections
echo "slapd slapd/purge_database boolean true" |debconf-set-selections
echo "slapd slapd/move_old_database boolean true" |debconf-set-selections
echo "slapd slapd/allow_ldap_v2 boolean false" |debconf-set-selections
echo "slapd slapd/no_configuration boolean false" |debconf-set-selections
apt-get install -y slapd ldap-utils

# ubuntu 16
# apt-get -y install libnss-ldap libpam-ldap ldap-utils
