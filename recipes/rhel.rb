cbprotect_pkg = File.join(Chef::Config[:file_cache_path], 'CbProtection.tgz')

remote_file 'CbProtect' do
  source node['cbprotect_agent']['source_url']
  path File.join(Chef::Config[:file_cache_path], 'CbProtection.tgz')
end

execute 'decompress CbProtect' do
  command "tar xvf #{cbprotect_pkg} -C #{Chef::Config[:file_cache_path]} --strip-components=1"
  only_if { File.exist?(cbprotect_pkg.to_s) }
end

execute 'install CbProtect' do
  command "sh #{Chef::Config[:file_cache_path]}/b9install.sh -n"
  cwd (Chef::Config[:file_cache_path]).to_s
  only_if { File.exist?("#{Chef::Config[:file_cache_path]}/b9install.sh") }
end

service 'CbProtect' do
  service_name 'b9daemon'
  action [:enable, :start]
end
