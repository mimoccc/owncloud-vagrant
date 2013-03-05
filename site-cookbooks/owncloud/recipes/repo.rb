#
# Cookbook Name:: owncloud
# Recipe:: repo
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

remote_file "/etc/yum.repos.d/isv:ownCloud:community.repo" do
  source "http://download.opensuse.org/repositories/isv:ownCloud:community/CentOS_CentOS-6/isv:ownCloud:community.repo"
  checksum "56e06bc00e0dcf7dad46239ea09897a70576524824683e678d54c924a9d4e11e"
  mode "0644"
end

