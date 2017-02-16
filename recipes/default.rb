#
# Cookbook:: automate
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# https://downloads.chef.io/automate/current/0.7.14

# automate-ctl setup --minimal

execute 'automate-ctl setup --minimal' do
  action :nothing
end

chef_ingredient 'automate' do
  action :install
  channel :current
  accept_license true
  notifies :run, 'execute[automate-ctl setup --minimal]', :immediately
end
