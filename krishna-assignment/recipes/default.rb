#
# Cookbook Name:: nginxvirtual
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
package 'nginx'

directory '/etc/nginx/ssl/krishna.example.com/' do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end

template '/etc/nginx/conf.d/krishna-assignment.conf' do
        source 'krishna-assignment.example.com.conf.erb'
end

cookbook_file '/etc/nginx/ssl/krishna.example.com/krishna.example.com.crt' do
  source 'krishna.example.com.crt'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end

cookbook_file '/etc/nginx/ssl/krishna.example.com/krishna.example.com.key' do
  source 'krishna.example.com.key'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end

cookbook_file '/etc/nginx/ssl/krishna.example.com/krishna.example.com.ca.crt' do
  source 'krishna.example.com.ca.crt'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end

service 'iptables' do
  action :stop
end

service 'nginx' do
  action [:stop, :start]
end

