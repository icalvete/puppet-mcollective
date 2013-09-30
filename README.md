#puppet-mcollective

Puppet manifest to install and configure mcollective

[![Build Status](https://secure.travis-ci.org/icalvete/puppet-mcollective.png)](http://travis-ci.org/icalvete/puppet-mcollective)

##Actions:

* **The client is not available yet** 
* Works in Debian|Ubuntu|RedHat|CentOS
* Install and configure server [mcollective](http://puppetlabs.com/mcollective)

##Requires:

* [hiera](http://docs.puppetlabs.com/hiera/1/index.html)
* https://github.com/icalvete/puppet-common

##Examples

Server:

    include mcollective

client

    include mcollective::client

##Authors:

Israel Calvete Talavera <icalvete@gmail.com>
