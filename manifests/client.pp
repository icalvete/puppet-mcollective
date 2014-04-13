class  mcollective::client (

  $connector_host = $mcollective::params::connector_host,
  $connector_port = $mcollective::params::connector_port,
  $connector_user = $mcollective::params::connector_user,
  $connector_pass = $mcollective::params::connector_pass,
  $connector      = $mcollective::params::connector

) {

  anchor {'mcollective::client::begin':
    before => Class['mcollective::client::install']
  }
  class {'mcollective::client::install':
    require => Anchor['mcollective::client::end']
  }
  class {'mcollective::client::config':
    require => Class['mcollective::client::install']
  }
  anchor {'mcollective::client::end':
    before => Class['mcollective::client::config']
  }
}
