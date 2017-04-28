Vagrant.configure("2") do |config|

  config.vm.define "centos-node" do |node|
    node.vm.box = "bento/centos-7.3"
    node.vm.network "private_network", ip: "172.16.0.20"

    config.vm.provision "file", source: "ssh/id_rsa.pub", destination: "/home/vagrant/.ssh/id_rsa.pub"

    config.vm.provision "shell", path: "provision/node.sh"
  end

  config.vm.define "ubuntu-node" do |node|
    node.vm.box = "bento/ubuntu-14.04"
    node.vm.network "private_network", ip: "172.16.0.30"

    config.vm.provision "file", source: "ssh/id_rsa.pub", destination: "/home/vagrant/.ssh/id_rsa.pub"

    config.vm.provision "shell", path: "provision/node.sh"
  end

  config.vm.define "control-server" do |node|
    node.vm.box = "bento/centos-7.3"
    node.vm.network "private_network", ip: "172.16.0.10"

    config.vm.provision "file", source: "ssh/id_rsa", destination: "/home/vagrant/.ssh/id_rsa"
    config.vm.provision "file", source: "ssh/id_rsa.pub", destination: "/home/vagrant/.ssh/id_rsa.pub"

    config.vm.provision "shell", path: "provision/control-server.sh"
  end

end
