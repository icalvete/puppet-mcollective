class  mcollective::client (

  $stomp_host = $mcollective::params::stomp_host,
  $stomp_port = $mcollective::params::stomp_port,
  $stomp_user = $mcollective::params::stomp_user,
  $stomp_pass = $mcollective::params::stomp_pass

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
