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
    it { should_not be_installed }
  end
end

services.each do |svc|
  describe service(svc) do
    it { should_not be_installed }
    it { should_not be_enabled }
    it { should_not be_running }
  end
end
