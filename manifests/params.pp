class mcollective::params {

  $service            = 'mcollective'
  $package            = ['mcollective', 'mcollective-client']
  $config_dir         = '/etc/mcollective'
  $config_file        = 'server.cfg'
  $client_config_file = 'client.cfg'

  $host               = hiera('mcollective_host', 'stomp1')
  $port               = hiera('mcollective_port', 61613)
  $user               = hiera('mcollective_user', 'mcollective')
  $pass               = hiera('mcollective_pass', 'marionette')

  case $::operatingsystem {
    /^(Debian|Ubuntu)$/: {

    }
    /^(Redhat|CentOS)$/: {
    }
    default: {
      fail ("${::operatingsystem} not supported.")
    }
  }
}
