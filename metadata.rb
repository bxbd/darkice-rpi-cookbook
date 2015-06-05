name 'darkice-rpi'
maintainer 'Tim Petter'
maintainer_email 'tim@timpetter.de'
license 'MIT'
description 'Installs/Configures darkice on a raspberry pi'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.2.0'

recipe 'darkice-rpi::default', 'Install precompiled package'
recipe 'darkice-rpi::source', 'Install from source'

depends 'apt'

supports 'debian'
