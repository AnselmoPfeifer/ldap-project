<?php
$ldaphost = "ldap://localhost";
$ldapport = 389;
$username = "cn=admin,dc=test,dc=zl0,dc=co";
$upasswd = "{SSHA}cT8k9drRUNlB4eOjwP1wfZ/54Rp0fvpe";

$ds = @ldap_connect($ldaphost, $ldapport) or die("Could not connect to $ldaphost");
if ($ds) 
	{
	    $ldapbind = @ldap_bind($ds, $username, $upasswd);
	                               
	    if ($ldapbind) 
	        echo "Ok";
	    else 
	        echo "Errado";
	}

?>