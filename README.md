# Scripts to install and config ldap, lam 
- Set files permission:
```cd scripts/ && chmod +x *.sh```

- If server dont have received update and upgrade, execute update script.
```./update.sh```

- To install Apache2 and PHP5, execute scripts/apache2.sh
```./apache2.sh```

- To install OpenLdap execute script ldap.sh
```./ldap.sh```

- To configure openldap, import files the config to ldap and ldap-admin, execute script config-ldap.sh
```./config-ldap.sh```

- Test access http://IP/lam/
- Password: p@ssw0rd999

- Import groups 
PS: read file in files/ldif/company.ldif
```ldapadd -x -D cn=admin,dc=test,dc=zl0,dc=co -W -f files/ldif/company.ldif```
- Asks password: p@ssw0rd999

- To test serach in ldap execute the commands bellow
```ldapsearch -h ldap.test.zl0.co -p 389 -b "DC=test,DC=zl0,Dc=co" -D "CN=admin,dc=test,dc=zl0,dc=co" -w "p@ssw0rd999"````

- Web admin e insert users
```http://IP/```

- Admin Ldap
```http://IP/lam/ - password: p@ssw0rd999```

### Atention the script config.sh set the values on the files /etc/hostname and /etc/hosts
This is must important for OpenLdap server; you can edit these files or execute the config.sh script
```./config.sh```
* PS: After run config.sh make sure the system is rebooted
