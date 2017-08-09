# # encoding: utf-8

# Inspec test for recipe

packages = []
services = []

redhat = {package_name: "b9agent", service_name: "b9daemon"}
windows = {package_name: "Cb Protection Agent", service_name: "Cb Protection Agent"}

case os[:family]
when 'redhat'
  packages << redhat[:package_name]
  services << redhat[:service_name]
when 'windows'
  packages << windows[:package_name]
  services << windows[:service_name]
end

packages.each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

services.each do |svc|
  describe service(svc) do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end
end
