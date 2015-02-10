Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty32"
# config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "private_network", ip: "10.10.10.50"
# config.vm.network "public_network"
# config.vm.synced_folder "../data", "/vagrant_data"
  config.vm.provider "virtualbox" do |vb|
	vb.gui = true
  end
  config.vm.provision :shell, :path => "vagrant_provision.sh"
#  config.vm.provision :puppet, :module_path => "/etc/puppet/modules" do |puppet|
#   puppet.manifests_path = "/etc/puppet/manifests"
#   puppet.manifest_file = "site.pp"
#  end
end
