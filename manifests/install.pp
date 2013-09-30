class mcollective::install {

  realize Package['stomp']

  package {$mcollective::params::mcollective_package:
    ensure  => present,
    require => Package['stomp']
  }
}
