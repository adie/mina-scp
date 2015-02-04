# Mina SCP

[![Gem Version](https://badge.fury.io/rb/mina-scp.png)](http://badge.fury.io/rb/mina-scp)

Basic SCP helpers for [Mina](https://github.com/nadarei/mina) deployer.
Used to download/upload files from/to the server.

### Installation

Add this line to your application's Gemfile:

```ruby
gem 'mina-scp', require: false
```

### Usage

Require it in your `deploy.rb`

```ruby
require 'mina/scp'
```

# Download file from the server

```
scp_download(remote_file, local_file)
```

# Upload file to the server

```
scp_upload(local_file, remote_file)
```

# Options

If you specify `verbose: true` as the last parameter, it will print the SCP command before running it.
If you want upload or download a folder you can also pass `recursively: true`.

### Development

For suggestions, bugs and pull requests, use [GitHub Issues](http://github.com/adie/mina-scp/issues).
See [CONTRIBUTING](http://github.com/adie/mina-scp/blob/master/CONTRIBUTING.md) for more details.

To see what has changed in recent versions of Mina SCP, see the [CHANGELOG](http://github.com/adie/mina-scp/blob/master/CHANGELOG.md).

### Contributors

See https://github.com/adie/mina-scp/graphs/contributors

### Copyright

Copyright © 2013-2015 Anton Dieterle. See [LICENSE](http://github.com/adie/mina-scp/blob/master/LICENSE.txt) for details.

Project is a member of the [OSS Manifesto](http://ossmanifesto.org/).


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/adie/mina-scp/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

