Vagrant.configure(2) do |config|
	config.vm.define "chefbox1" do |chefbox1|
		chefbox1.vm.box = "centos/7"
    		chefbox1.vm.hostname = "chefbox1"
      		chefbox1.vm.provision "shell", path: "scripts/install.sh"
    		chefbox1.vm.provider "virtualbox" do |v|
    		  v.memory = 2048
    		  v.cpus = 2
    		end
	end
end
