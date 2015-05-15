#
# Cookbook Name:: darkice-rpi
# Recipe:: default
#
# Copyright 2015, Tim Petter
#
#

package_name = "darkice_remote_armhf.deb"

remote_file "/usr/local/src/#{package_name}" do
  source node['darkice-rpi']['package_url']
end

execute 'Install package' do
  cwd '/usr/local/src'
  command "dpkg -i #{package_name}"
end

template '/etc/darkice.cfg' do
  source 'darkice.cfg.erb'
end
