#
# Cookbook Name:: nginxvirtual
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
package 'nginx'

directory '/usr/share/nginx/assignment' do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end

template '/etc/nginx/conf.d/krishna-assignment.conf' do
        source 'krishna-assignment.example.com.conf.erb'
end

cookbook_file '/usr/share/nginx/assignment' do
  source 'index.html'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end
