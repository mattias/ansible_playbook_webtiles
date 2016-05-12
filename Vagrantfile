VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.ssh.insert_key = false
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "512"]
  end

  # crawl server
  config.vm.define "crawl1" do |inventory|
    inventory.vm.hostname = "crawl1"
    inventory.vm.box = "bento/ubuntu-15.04"
    inventory.vm.network :private_network, ip: "192.168.28.71"
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "crawl.yml"
    ansible.inventory_path = "./inventories/"
    ansible.host_key_checking = false
    ansible.limit = "all"
    ansible.extra_vars = {
      ansible_ssh_user: 'vagrant',
      ansible_ssh_private_key_file: "~/.vagrant.d/insecure_private_key"
    }
  end
end
