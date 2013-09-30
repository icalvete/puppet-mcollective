class mcollective (

  $stomp_host = $mcollective::params::stomp_host,
  $stomp_port = $mcollective::params::stomp_port,
  $stomp_user = $mcollective::params::stomp_user,
  $stomp_pass = $mcollective::params::stomp_pass

) inherits mcollective::params {

  anchor {'mcollective::begin':
    before => Class['mcollective::install']
  }
  class {'mcollective::install':
    require => Anchor['mcollective::end']
  }
  class {'mcollective::config':
    require => Class['mcollective::install']
  }
  class {'mcollective::service':
    subscribe => Class['mcollective::config']
  }
  anchor {'mcollective::end':
    before => Class['mcollective::service']
  }
}
