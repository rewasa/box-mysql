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


mysql_database_user node['db']['user'] do
  connection mysql_connection_info
  password   ''
  action     :create
end


mysql_database_user node['db']['user'] do
  connection    mysql_connection_info
  password      ''
  host          '%'
  privileges    [:all]
  action        :grant
end
