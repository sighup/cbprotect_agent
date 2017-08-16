#
# Cookbook:: cbprotect_agent
# Recipe:: default

include_recipe "#{cookbook_name}::#{node['platform_family']}"
