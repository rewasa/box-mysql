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


## create 6 databases
(1..6).each do |i|

  mysql_database node['db']["name_#{i}"] do
    connection mysql_connection_info
    action :create
  end

end

