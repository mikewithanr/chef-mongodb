#
# Cookbook:: mongodb-cookbook
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'yum'
include_recipe 'selinux'
yum_repository 'mongodb' do
 description 'mongodb-repo'
 baseurl 'https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.4/x86_64/'
 gpgkey 'https://www.mongodb.org/static/pgp/server-3.4.asc'
 action :create
end
 
yum_package 'mongodb-org' do
 action :install
end
