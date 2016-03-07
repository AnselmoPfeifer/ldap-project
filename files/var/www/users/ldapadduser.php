<html>
<head>
	<link rel = "stylesheet" type = "text/css" href = "../css/styles.css">
		<link rel = "stylesheet" type = "text/css" href = "../css/bootstrap.mini.css">
	<title>LDAP Add</title>
</head>
<body>
	<?php

	$user = "cn=admin,dc=test,dc=zl0,dc=co";
    $pass = "p@ssw0rd999";
	// $connect = @ldap_connect("ldap://127.0.0.1");
	$bind = @ldap_bind($connect, $user, $pass);
	$group = "Groups";

	$cn = htmlspecialchars($_GET['username']);
	$givenName = htmlspecialchars($_GET['firstname']);
	$surname = htmlspecialchars($_GET['lastname']);

	$ds = @ldap_connect("ldap://127.0.0.1") or die ("Could not connect to LDAP Server");
	echo $ds;
	if($ds){
		$r = $bind;
		$info["cn"] = $cn;
		$info["givenName"] = $givenName;
		$info["surname"] = $surname;
		$info["objectClass"] = "inetOrgPerson";
		$r = @ldap_add($ds,"cn=$cn,ou=$group,dc=test,dc=zl0,dc=co",$info);
		$sr = @ldap_search($ds,"dc=test,dc=zl0,dc=co","cn=$cn");
		$info = @ldap_get_entries($ds,$sr);
		echo "The user:<span class='result'> " . $info[0]["dn"] . "</span> has been created. <br>";
		echo "Login: $cn <br>";
		echo "First Name: $givenName <br>";
		echo "Last Name: $surname <br>";
	}	
		ldap_close($ds);
	?>
	<hr>
	<a href="index.html">Register new user</a>
</body>
</html>