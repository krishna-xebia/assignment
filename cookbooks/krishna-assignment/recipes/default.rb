#
# Cookbook Name:: nginxvirtual
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
package 'nginx'

directory "/etc/nginx/ssl/#{node['nginx']['server_name']}" do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end

template '/etc/nginx/conf.d/krishna-assignment.conf' do
        source 'krishna-assignment.example.com.conf.erb'
end

cookbook_file "/etc/nginx/ssl/#{node['nginx']['server_name']}/#{node['nginx']['server_crt']}" do
  source "#{node['nginx']['server_crt']}"
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end

cookbook_file "/etc/nginx/ssl/#{node['nginx']['server_name']}/#{node['nginx']['server_key']}" do
  source "#{node['nginx']['server_key']}"
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end

cookbook_file "/etc/nginx/ssl/#{node['nginx']['server_name']}/#{node['nginx']['server_ca_crt']}" do
  source "#{node['nginx']['server_ca_crt']}"
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

