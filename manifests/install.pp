class mcollective::install {

  realize Package['stomp']

  case $::osfamily {

    /^(Debian|Ubuntu)$/: {
      package {'mcollective-plugins-facts-facter':
        ensure => present,
        before => Package[$mcollective::params::mcollective_package]
      }
    }
    /^(CentOS|RedHat)$/: {
      package {'mcollective-facter-facts':
        ensure => present,
        before => Package[$mcollective::params::mcollective_package]
      }
    }
    default: {}
  }

  package {$mcollective::params::mcollective_package:
    ensure  => present,
    require => Package['stomp']
  }
}
