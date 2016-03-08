 # File created by Anselmo Pfeifer 
 # Execute permission in files 
 # cd scripts/ && chmod +x *.sh

	If your server not Has received update and upgrade
	Read script update.sh
	Execute script update.
	- ./update.sh
	
	To install Apache2 and PHP5 
	Read script apache2.sh
	Execute scripts/apache2.sh
	- ./apache2.sh

	To install OpenLdap 
	Read script ldap.sh
	Execute script ldap.sh
	- ./ldap.sh

	To configure openldap, import files the config to ldap and ldap-admin 
	Read script config-ldap.sh
	Execute script config-ldap.sh
	- ./config-ldap.sh

	OBS: Access http://IP/lam/
	Password: p@ssw0rd999

	Import groups 
	Obs: read file in files/ldif/company.ldif
	- ldapadd -x -D cn=admin,dc=test,dc=zl0,dc=co -W -f files/ldif/company.ldif
	Asks password: p@ssw0rd999

	To test serach in ldap execute the commands bellow
	- ldapsearch -h ldap.test.zl0.co -p 389 -b "DC=test,DC=zl0,Dc=co" -D "CN=admin,dc=test,dc=zl0,dc=co" -w "p@ssw0rd999"

	Web admin e insert users
 	- http://IP/

	Admin Ldap
	- http://IP/lam/ - password: p@ssw0rd999

	Atention the script config.sh edits the files /etc/hostname and /etc/hosts
	Is important to OpenLdap; You can alter the files or execute script
	Read script config.sh
	- ./config.sh

	OBS: After run config.sh system reboot
