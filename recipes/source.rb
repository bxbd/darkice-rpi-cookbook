#
# Cookbook Name:: darkice-rpi
# Recipe:: source
#
# Copyright 2015, Tim Petter
#
#
include_recipe 'apt'

apt_repository 'darkice-rpi' do
  uri node['darkice-rpi']['uri']
  distribution node['darkice-rpi']['distribution']
  components ['main', 'contrib', 'non-free', 'rpi']
  arch node['darkice-rpi']['arch']
  deb_src true
end

[
  'devscripts',
  'autotools-dev',
  'fakeroot',
  'dpkg-dev',
  'debhelper',
  'autotools-dev',
  'dh-make',
  'quilt',
  'ccache',
  'libsamplerate0-dev',
  'libpulse-dev',
  'libaudio-dev',
  'lame',
  'libjack-jackd2-dev',
  'libasound2-dev',
  'libtwolame-dev',
  'libfaad-dev',
  'libflac-dev',
  'libmp4v2-dev',
  'libshout3-dev',
  'libmp3lame-dev'
].each do |p|
  package p do
    action :install
  end
end

execute 'Get darkice source' do
  cwd '/usr/local/src'
  command 'apt-get source darkice'
end

template '/usr/local/src/darkice-1.0/debian/rules' do
  source 'rules.erb'
end

execute 'Change version to prevent override' do
  cwd '/usr/local/src/darkice-1.0'
  command "debchange -v #{ node['darkice-rpi']['version'] } mp3 support"
end

execute 'Build package' do
  cwd '/usr/local/src/darkice-1.0'
  command 'dpkg-buildpackage -rfakeroot -uc -b'
  not_if { ::File.exist?("/usr/local/src/darkice_#{ node['darkice-rpi']['version'] }_armhf.deb") }
end

execute 'Install package' do
  cwd '/usr/local/src'
  command "dpkg -i darkice_#{ node['darkice-rpi']['version'] }_armhf.deb"
end

template '/etc/darkice.cfg' do
  source 'darkice.cfg.erb'
end
