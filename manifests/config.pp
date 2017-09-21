class mcollective::config {

  file {'mcollective_config_file':
    ensure  => present,
    path    => "${mcollective::params::config_dir}/${mcollective::params::config_file}",
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("${module_name}/${mcollective::params::config_file}_${osfamily}.erb"),
  }

  file {'mcollective_client_config_file':
    ensure  => present,
    path    => "${mcollective::params::config_dir}/${mcollective::params::client_config_file}",
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("${module_name}/${mcollective::params::client_config_file}_${osfamily}.erb"),
  }
}
