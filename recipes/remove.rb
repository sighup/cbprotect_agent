#
# Cookbook:: cbprotect_agent
# Recipe:: remove
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe "#{cookbook_name}::#{node['platform_family']}_remove"
