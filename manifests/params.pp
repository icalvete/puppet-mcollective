class mcollective::params {

  $mcollective_service            = 'mcollective'
  $mcollective_package            = 'mcollective'
  $mcollective_package_client     = 'mcollective-client'
  $mcollective_config_dir         = '/etc/mcollective'
  $mcollective_config_file        = 'server.cfg'
  $mcollective_client_config_file = 'client.cfg'

  $stomp_host                     = hiera('mcollective_stomp_server')
  $stomp_port                     = hiera('mcollective_stomp_port')
  $stomp_user                     = hiera('mcollective_stomp_user')
  $stomp_pass                     = hiera('mcollective_stomp_pass')

  case $::operatingsystem {
    /^(Debian|Ubuntu)$/: {
      $so = 'debian'
    }
    /^(Redhat|CentOS)$/: {
      $so = 'redhat'
    }
    default: {
      fail ("${::operatingsystem} not supported.")
    }
  }
}
