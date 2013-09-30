class mcollective::params {

  $mcollective_service     = 'mcollective'
  $mcollective_package     = 'mcollective'
  $mcollective_config_dir  = '/etc/mcollective'
  $mcollective_config_file = 'server.cfg'

  $stomp_host              = hiera('mcollective_stomp_server')
  $stomp_port              = hiera('mcollective_stomp_port')
  $stomp_user              = hiera('mcollective_stomp_user')
  $stomp_pass              = hiera('mcollective_stomp_pass')

  case $::operatingsystem {
    /^(Debian|Ubuntu)$/: {}
    /^(Redhat|CentOS)$/: {}
    default: {
      fail ("${::operatingsystem} not supported.")
    }
  }
}
