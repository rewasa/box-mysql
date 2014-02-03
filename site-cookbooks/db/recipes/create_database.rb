#
# Cookbook Name:: chant
# Recipe:: database
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

include_recipe "database::mysql"

mysql_connection_info = {
  :host     => 'localhost',
  :username => 'root',
  :password => node['mysql']['server_root_password']
}

mysql_database node['database']['name_1'] do
  connection mysql_connection_info
  action :create
end


mysql_database node['database']['name_2'] do
  connection mysql_connection_info
  action :create
end
