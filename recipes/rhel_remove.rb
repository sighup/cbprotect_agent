execute 'uninstall CbProtect' do
  command "sh ./b9uninstall.sh"
  cwd "/opt/bit9/bin"
  only_if { File.exist?('/opt/bit9/bin/b9uninstall.sh') }
end
