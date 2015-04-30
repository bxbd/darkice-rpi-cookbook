## darkice for raspberry pi Cookbook
This installs darkice with mp3 support for the rasperri pi

## Requirements
A raspberry pi with installed chef

## Usage

###Attributes
[TODO]
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['darkice-rpi']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

#### darkice-rpi::default
To install darkice from a precompiled source just include `darkice-rpi` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[darkice-rpi]"
  ]
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
