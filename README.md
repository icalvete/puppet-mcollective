#puppet-mcollective

Puppet manifest to install and configure mcollective

[![Build Status](https://secure.travis-ci.org/icalvete/puppet-mcollective.png)](http://travis-ci.org/icalvete/puppet-mcollective)

##Actions:

* Works in Debian|Ubuntu|RedHat|CentOS
* Install and configure server and client [mcollective](http://puppetlabs.com/mcollective)

##Requires:

* [hiera](http://docs.puppetlabs.com/hiera/1/index.html)
* https://github.com/icalvete/puppet-common

##Examples

Server:

```puppet
    include mcollective
```

client

```puppet
    include mcollective::client
```

##Authors:

Israel Calvete Talavera <icalvete@gmail.com>
