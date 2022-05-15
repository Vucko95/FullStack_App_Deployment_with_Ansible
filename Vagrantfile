Vagrant.configure("2") do |config| 
    # config.vm.box = "ubuntu/trusty64"
    config.vm.box = "centos/7"
  
    config.vm.define "master" do |master|
      master.vm.hostname = "ansible-control" 
      master.vm.network "private_network", ip: "192.168.56.100"
      master.vm.provision "file", source: "id_rsa.pub", destination: "~/.ssh/id_rsa.pub"
      master.vm.provision "file", source: "id_rsa", destination: "~/.ssh/id_rsa"
      master.vm.network :forwarded_port, host: 2215, guest: 22
      master.vm.provision "shell", path: "ansible_setup.sh"
      master.vm.provision "file", source: "hosts", destination: "/etc/ansible/hosts"
    
    end 
    
    config.vm.define "db01" do |db01|
      db01.vm.hostname = "db01" 
      db01.vm.network "private_network", ip: "  " 
      db01.vm.network :forwarded_port, host: 2210, guest: 80
      db01.vm.provision "file", source: "id_rsa.pub", destination: "~/.ssh/id_rsa.pub"
      db01.vm.provision "shell", path: "node_setup.sh"
    end 
    
    # config.vm.define "web01" do |web01|
    #   web01.vm.hostname = "web01" 
    #   web01.vm.network "private_network", ip: "192.168.56.102" 
    #   web01.vm.network :forwarded_port, host: 2211, guest: 80
    # end 
    # config.vm.define "web02" do |web02|
    #   web02.vm.hostname = "web02" 
    #   web02.vm.network "private_network", ip: "192.168.56.103" 
    #   web02.vm.network :forwarded_port, host: 2212, guest: 80
    # end 
    # config.vm.define "loadbalancer" do |loadbalancer|
    #   loadbalancer.vm.hostname = "loadbalancer" 
    #   loadbalancer.vm.network "private_network", ip: "192.168.56.104" 
    #   loadbalancer.vm.network :forwarded_port, host: 2213, guest: 80
      
    # end 
      


  end 
  
  # ssh -i C:/Users/ronal/Desktop/VagrantLabs/.vagrant/machines/master/virtualbox/private_key -o PasswordAuthentication=no vagrant@127.0.0.1 -p 2222
  # https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-ansible-on-centos-7
  # ansible all -m ping
  # ansible-galaxy install nginxinc.nginx
  # cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak