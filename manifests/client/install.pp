class mcollective::client::install {

  package{$mcollective::params::mcollective_package_client:
    ensure  => present,
    require => Package['stomp']
  }
}
