Install darkice with mp3 support on a raspberry pi

## Requirements
A raspberry pi with chef installed

## Usage

###Attributes
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td colspan="4"><b>Default recipe</b></td>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['package_url']</tt></td>
    <td>String</td>
    <td>Remote url to download a precompiled package</td>
    <td><tt>empty</tt></td>
  </tr>
  <tr>
    <td colspan="4"><b>Source recipe</b></td>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['platform']</tt></td>
    <td>String</td>
    <td>Repository platform</td>
    <td><tt>armhf</tt></td>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['uri']</tt></td>
    <td>String</td>
    <td>Repository uri</td>
    <td><tt>http://mirrordirector.raspbian.org/raspbian/</tt></td>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['distribution']</tt></td>
    <td>String</td>
    <td>Repository distribution</td>
    <td><tt>wheezy</tt></td>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['version']</tt></td>
    <td>String</td>
    <td>The version name for the self compiled package</td>
    <td><tt>1.0-999~mp3+1</tt></td>
  </tr>
  <tr>
    <td colspan="4"><b>Configuration</b></td>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['input']['device']</tt></td>
    <td>String</td>
    <td>Input device to capture sound from</td>
    <td><tt>hw:0,0</tt></td>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['input']['sample-rate']</tt></td>
    <td>String</td>
    <td>MP3 Sample rate</td>
    <td><tt>44100</tt></td>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['input']['bits-per-sample']</tt></td>
    <td>String</td>
    <td>MP3 bits per sample</td>
    <td><tt>16</tt></td>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['input']['channels']</tt></td>
    <td>String</td>
    <td>MP3 Channels</td>
    <td><tt>2</tt></td>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['server']['hostname']</tt></td>
    <td>String</td>
    <td>Icecast Server hostname</td>
    <td><tt>raspberrypi.local</tt></td>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['server']['port']</tt></td>
    <td>String</td>
    <td>Icecast Server port</td>
    <td><tt>8000</tt></td>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['server']['password']</tt></td>
    <td>String</td>
    <td>Icecast Server password</td>
    <td><tt>password</tt></td>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['stream']['bittrate']</tt></td>
    <td>String</td>
    <td>Stream bitrate</td>
    <td><tt>320</tt></td>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['stream']['bitrate-mode']</tt></td>
    <td>String</td>
    <td>Stream bitrate mode</td>
    <td><tt>vbr</tt></td>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['stream']['quality']</tt></td>
    <td>String</td>
    <td>Stream quality</td>
    <td><tt>1.0</tt></td>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['stream']['format']</tt></td>
    <td>String</td>
    <td>Stream format</td>
    <td><tt>mp3</tt></td>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['stream']['mount']</tt></td>
    <td>String</td>
    <td>Stream mount point</td>
    <td><tt>raspi</tt></td>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['stream']['name']</tt></td>
    <td>String</td>
    <td>Stream name</td>
    <td><tt>Raspi</tt></td>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['stream']['description']</tt></td>
    <td>String</td>
    <td>Stream description</td>
    <td><tt>DarkIce on RasPi</tt></td>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['stream']['url']</tt></td>
    <td>String</td>
    <td>Stream url</td>
    <td><tt>http://raspberrypi.local</tt></td>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['stream']['genre']</tt></td>
    <td>String</td>
    <td>Stream genre</td>
    <td><tt>turntable</tt></td>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['stream']['public']</tt></td>
    <td>String</td>
    <td>Public or private Stream</td>
    <td><tt>no</tt></td>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['stream']['dump-file']</tt></td>
    <td>String</td>
    <td>Stream dump file</td>
    <td><tt>recording.mp3</tt></td>
  </tr>
</table>

#### darkice-rpi::default
To install darkice from a precompiled source include `darkice-rpi` in your node's `run_list`
with a remote package url:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[darkice-rpi]"
  ],
  "darkice-rpi": {
    "package_url": "https://"
  }
}
```

#### darkice-rpi::source
To install darkice from a source just include `darkice-rpi::source` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[darkice-rpi::source]"
  ]
}
```

### Contributing

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

### License and Authors

Authors: Tim Petter

```
The MIT License (MIT)

Copyright (c) 2015 Tim Petter

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
