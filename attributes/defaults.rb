# Source attributes
default['darkice-rpi']['platform'] = 'armhf'
default['darkice-rpi']['uri'] = 'http://mirrordirector.raspbian.org/raspbian/'
default['darkice-rpi']['distribution'] = 'wheezy'

# Version attributes
default['darkice-rpi']['version'] = '1.0-999~mp3+1'

# Configuration attributes
default['darkice-rpi']['input']['device'] = 'hw:0,0'
default['darkice-rpi']['input']['sample-rate'] = '44100'
default['darkice-rpi']['input']['bits-per-sample'] = '16'
default['darkice-rpi']['input']['channels'] = '2'

# Server attributes
default['darkice-rpi']['server']['hostname'] = 'raspberrypi.local'
default['darkice-rpi']['server']['port'] = '8000'
default['darkice-rpi']['server']['password'] = 'password'

# Icecast attributes
default['darkice-rpi']['stream']['bitrate'] = '320'
default['darkice-rpi']['stream']['bitrate-mode'] = 'vbr'
default['darkice-rpi']['stream']['quality'] = '1.0'
default['darkice-rpi']['stream']['format'] = 'mp3'
default['darkice-rpi']['stream']['mount'] = 'raspi'
default['darkice-rpi']['stream']['name'] = 'Raspi'
default['darkice-rpi']['stream']['description'] = 'DarkIce on RasPi'
default['darkice-rpi']['stream']['url'] = 'http://raspberrypi.local'
default['darkice-rpi']['stream']['genre'] = 'turntables'
default['darkice-rpi']['stream']['public'] = 'no'
default['darkice-rpi']['stream']['dump-file'] = 'recording.mp3'
