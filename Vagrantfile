Vagrant.configure("2") do |config|
  	config.vm.box = "debian8-64"
  	config.vm.box_url = "debian8-64"
	config.vm.network "forwarded_port", guest: 80, host: 8081
	config.vm.hostname = "ldap"

#	config.vm.provision "shell", path: "scripts/update.sh"
#	config.vm.provision "shell", path: "scripts/apache2.sh"
#	config.vm.provision "shell", path: "scripts/ldap.sh"
#	config.vm.provision "shell", path: "scripts/config-ldap.sh"

	config.vm.provider :virtualbox do |vb|
    	vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    	vb.customize ["modifyvm", :id, "--memory", 512]
    	vb.customize ["modifyvm", :id, "--name", "open-ldap"]
	end
end
