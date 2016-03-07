# 	File created by Anselmo Pfeifer - Reference www.anselmopfeifer.com

>  If your server not Has received  update and upgrade
>  Execute script update.
>  Read script update.sh
chmod +x update.sh
./update.sh
	
> To install Apache2 and PHP5 
> Execute script apache2.sh
> Read script apache2.sh
chmod +x apache2.sh
./apache2.sh


> To install OpenLdap execute script ldap.sh
> Read script ldap.sh
chmod +x ldap.sh
./ldap.sh


> To configure openldap execute script confi-ldap.sh
> Read script config-ldap.sh
chmod +x config-ldap.sh
./config-ldap.sh

> OBS: Access http://IP/lam/
Password: p@ssw0rd999

> Import groups 
> Obs: read file in files/ldif/company.ldif
ldapadd -x -D cn=admin,dc=test,dc=zl0,dc=co -W -f files/ldif/company.ldif
> Asks password
p@ssw0rd999

- To test serach in ldap execute the commands bellow
ldapsearch -h ldap.test.zl0.co -p 389 -b "DC=test,DC=zl0,Dc=co" -D "CN=admin,dc=test,dc=zl0,dc=co" -w "p@ssw0rd999"

> Web admin e insert users
 http://IP/

> Admin Ldap
 http://IP/lam/
password: p@ssw0rd999


> Atention the script config.sh edits the files /etc/hostname and /etc/hosts
> Is important to OpenLdap; You can alter the files or execute script
> Read script config.sh
chmod +x config.sh
./config.sh

> OBS: After run confi.sh system reboot
