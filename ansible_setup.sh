sudo yum install epel-release -y
sudo yum install ansible -y
sudo chown vagrant:vagrant /etc/ansible/*
sudo cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
sudo chmod 400 /home/vagrant/.ssh/id_rsa