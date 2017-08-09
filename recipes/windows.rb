windows_package 'CbProtect' do
  action :install
  source node['cbprotection']['source_url']
  installer_type :msi
  remote_file_attributes ({
    path: File.join(Chef::Config[:file_cache_path], 'CbProtection.msi')
  })
end

windows_service 'Parity' do
  action [:configure_startup, :start]
  startup_type :automatic
end
