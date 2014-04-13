class mcollective::params {

  $mcollective_service            = 'mcollective'
  $mcollective_package            = 'mcollective'
  $mcollective_config_dir         = '/etc/mcollective'
  $mcollective_config_file        = 'server.cfg'
  $mcollective_client_config_file = 'client.cfg'

  $connector_host                 = hiera('mcollective_connector_server')
  $connector_port                 = hiera('mcollective_connector_port')
  $connector_user                 = hiera('mcollective_connector_user')
  $connector_pass                 = hiera('mcollective_connector_pass')
  $connector                      = 'rabbitmq'

  case $::operatingsystem {
    /^(Debian|Ubuntu)$/: {
      $so = 'debian'
      $mcollective_package_client     = [
        'mcollective-client',
        'mcollective-plugins-puppetd',
        'mcollective-puppet-agent',
        'mcollective-service-client'
      ]
    }
    /^(Redhat|CentOS)$/: {
      $so = 'redhat'
      $mcollective_package_client     = [
        'mcollective-client',
        'mcollective-puppet-agent',
        'mcollective-service-client'
      ]
    }
    default: {
      fail ("${::operatingsystem} not supported.")
    }
  }
}
