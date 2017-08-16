#
# Cookbook:: cbprotect_agent
# Recipe:: remove

include_recipe "#{cookbook_name}::#{node['platform_family']}_remove"
