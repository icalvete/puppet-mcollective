class mcollective (

  $host    = $mcollective::params::host,
  $port    = $mcollective::params::port,
  $user    = $mcollective::params::user,
  $pass    = $mcollective::params::pass,
  $puppet  = false

) inherits mcollective::params {

  anchor {'mcollective::begin':
    before => Class['mcollective::install']
  }
  class {'mcollective::install':
    require => Anchor['mcollective::begin']
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
