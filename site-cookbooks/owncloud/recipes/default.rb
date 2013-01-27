#
# Cookbook Name:: owncloud
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "yum"

yum_key "owncloud-key" do
  url "http://download.opensuse.org/repositories/isv:/ownCloud:/ownCloud2012/CentOS_CentOS-6/repodata/repomd.xml.key"
  action :add
end

yum_repository "owncloud" do
    repo_name "isv_ownCloud_ownCloud2012"
    description "ownCloud 2012 Server - Private file sync and share server (CentOS_CentOS-6)"
    url "http://download.opensuse.org/repositories/isv:/ownCloud:/ownCloud2012/CentOS_CentOS-6/"
    key "owncloud-key"
    type "rpm-md"
    action :add
end

package "owncloud" do
    action :install
end

service "iptables" do
    action [:stop, :disable]
end

service "httpd" do
    action :start
end
