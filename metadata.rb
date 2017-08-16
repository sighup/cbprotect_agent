name 'cbprotect_agent'
maintainer ''
maintainer_email ''
license 'Apache-2.0'
description 'Installs or Uninstalls Cb Protection Agent'
version '0.1.1'
chef_version '>= 12.1' if respond_to?(:chef_version)
source_url 'https://github.com/sighup/cbprotect_agent'
issues_url 'https://github.com/sighup/cbprotect_agent/issues'

supports 'centos', '~> 6.7'
supports 'windows', '~> 6.3.9600'
