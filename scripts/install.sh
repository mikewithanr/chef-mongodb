#!/bin/bash
sudo yum -y install wget git &&
wget  https://packages.chef.io/files/stable/chefdk/1.3.43/el/7/chefdk-1.3.43-1.el7.x86_64.rpm &&
sudo  rpm -i chefdk-1.3.43-1.el7.x86_64.rpm  
mkdir .chef
mkdir cookbooks
echo  "cookbook_path ['/home/vagrant/cookbooks']" > ~/.chef/knife.rb
cd cookbooks
chef generate cookbook mongodb-cookbook &&
echo "maintainer 'Raik Nettling'" >> /home/vagrant/cookbooks/mongodb-cookbook/metadata.rb
echo "maintainer_email 'raik@nettling.com'" >> /home/vagrant/cookbooks/mongodb-cookbook/metadata.rb
echo "depends 'yum'"  >> /home/vagrant/cookbooks/mongodb-cookbook/metadata.rb
echo "depends 'selinux'"  >> /home/vagrant/cookbooks/mongodb-cookbook/metadata.rb

berks init &&
berks install 

