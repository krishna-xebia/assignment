# assignment

Without Vagrant
===================

RUN THE BELOW COMMAND:

yum install git vim wget -y 
wget https://opscode-omnibus-packages.s3.amazonaws.com/el/6/x86_64/chefdk-0.10.0-1.el6.x86_64.rpm 
rpm -ivh /vagrant/chefdk-0.10.0-1.el6.x86_64.rpm 
mkdir ~/.chef echo "cookbook_path [ '/home/vagrant/assignment/cookbooks/' ]" > ~/.chef/knife.rb 
git clone https://github.com/krishna-xebia/assignment.git 
cd assignment 
sudo chef-client --local -j krishna-assignment-vm2.json 


For Vagrant:

Rename Vagrant-vm1, Vagrant-vm2 to Vagrantfile while making vagrant environment


Vagrant file configuration example:

Vagrant.configure(2) do |config|

  config.vm.box = "centos"



  config.vm.network "private_network", ip: "192.168.33.11"


   config.vm.provider "virtualbox" do |vb|
     vb.memory = "1024"
   end


   config.vm.provision "shell", inline: <<-SHELL
      yum install git vim wget -y
      wget https://opscode-omnibus-packages.s3.amazonaws.com/el/6/x86_64/chefdk-0.10.0-1.el6.x86_64.rpm
      rpm -ivh /vagrant/chefdk-0.10.0-1.el6.x86_64.rpm
      mkdir ~/.chef
      echo "cookbook_path [ '/home/vagrant/assignment/cookbooks/' ]" > ~/.chef/knife.rb
      git clone https://github.com/krishna-xebia/assignment.git
      cd assignment
      chef-client --local -j krishna-assignment-vm1.json
   SHELL
end


VM2
==========
Vagrant.configure(2) do |config|

  config.vm.box = "centos"



  config.vm.network "private_network", ip: "192.168.33.11"


   config.vm.provider "virtualbox" do |vb|
     vb.memory = "1024"
   end


   config.vm.provision "shell", inline: <<-SHELL
      yum install git vim wget -y
      wget https://opscode-omnibus-packages.s3.amazonaws.com/el/6/x86_64/chefdk-0.10.0-1.el6.x86_64.rpm
      rpm -ivh /vagrant/chefdk-0.10.0-1.el6.x86_64.rpm
      mkdir ~/.chef
      echo "cookbook_path [ '/home/vagrant/assignment/cookbooks/' ]" > ~/.chef/knife.rb
      git clone https://github.com/krishna-xebia/assignment.git
      cd assignment
      chef-client --local -j krishna-assignment-vm2.json
   SHELL
end


