#
# Cookbook Name:: mycentos
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

service "iptables" do
  action [:stop, :disable]
end

