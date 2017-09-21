class mcollective::install {

  package {$mcollective::params::package:
    ensure  => present,
  }

  case $::osfamily {

    /^(Debian|Ubuntu)$/: {
      package {'mcollective-plugins-facts-facter':
        ensure  => present,
        require  => Package[$mcollective::params::package],
      }
      if $mcollective::puppet {
        package {'mcollective-plugins-puppetd':
          ensure  => present,
          require  => Package[$mcollective::params::package],
        }
      }
    }
    /^(CentOS|RedHat)$/: {
      package {'mcollective-facter-facts':
        ensure  => present,
        require  => Package[$mcollective::params::package],
      }
    }
    default: {}
  }
}
