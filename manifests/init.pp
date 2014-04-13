class mcollective (

  $connector_host = $mcollective::params::connector_host,
  $connector_port = $mcollective::params::connector_port,
  $connector_user = $mcollective::params::connector_user,
  $connector_pass = $mcollective::params::connector_pass,
  $connector      = $mcollective::params::connector

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
