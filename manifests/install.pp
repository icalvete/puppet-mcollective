class mcollective::install {

  case $::osfamily {

    /^(Debian|Ubuntu)$/: {
      package {'mcollective-plugins-facts-facter':
        ensure  => present,
        before  => Package[$mcollective::params::mcollective_package],
        require => Package['stomp']
      }
    }
    /^(CentOS|RedHat)$/: {
      package {'mcollective-facter-facts':
        ensure  => present,
        before  => Package[$mcollective::params::mcollective_package],
        require => Package['stomp']
      }
    }
    default: {}
  }

  package {$mcollective::params::mcollective_package:
    ensure  => present,
    require => Package['stomp']
  }
}
