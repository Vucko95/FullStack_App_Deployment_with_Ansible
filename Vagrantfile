Vagrant.configure("2") do |config| 
    config.vm.box = "bento/ubuntu-18.04"
  
    config.vm.define "ansible-control" do |master|
      master.vm.hostname = "ansible-control" 
      master.vm.network "private_network", ip: "192.168.56.100"
      master.vm.network :forwarded_port, host: 2215, guest: 22
    #   master.vm.provision "shell", path: "master_setup.sh"
    #   master.vm.provision "file", source: "hosts", destination: "/etc/ansible/hosts"
    end 
    
    config.vm.define "db01" do |db01|
      db01.vm.hostname = "db01" 
      db01.vm.network "private_network", ip: "192.168.56.101" 
      db01.vm.network :forwarded_port, host: 2210, guest: 80
    end 
    
    config.vm.define "web01" do |web01|
        web01.vm.hostname = "web01" 
        web01.vm.network "private_network", ip: "192.168.56.102" 
        web01.vm.network :forwarded_port, host: 2211, guest: 80
      end 
    config.vm.define "web02" do |web02|
        web02.vm.hostname = "web02" 
        web02.vm.network "private_network", ip: "192.168.56.103" 
        web02.vm.network :forwarded_port, host: 2212, guest: 80
      end 
    config.vm.define "loadbalancer" do |loadbalancer|
        loadbalancer.vm.hostname = "loadbalancer" 
        loadbalancer.vm.network "private_network", ip: "192.168.56.104" 
        loadbalancer.vm.network :forwarded_port, host: 2213, guest: 80
      end 
      


  end 
  
  # ssh -i C:/Users/ronal/Desktop/VagrantLabs/.vagrant/machines/master/virtualbox/private_key -o PasswordAuthentication=no vagrant@127.0.0.1 -p 2222
  # https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-ansible-on-centos-7
  # ansible all -m ping
  # ansible-galaxy install nginxinc.nginx
  # cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak