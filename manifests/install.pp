class mcollective::install {

  realize Package['stomp']

  package {'mcollective-plugins-facts-facter':
    ensure => present,
    before => Package[$mcollective::params::mcollective_package]
  }

  package {$mcollective::params::mcollective_package:
    ensure  => present,
    require => Package['stomp']
  }
}
