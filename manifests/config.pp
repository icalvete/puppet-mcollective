class mcollective::config {

  file {'mcollective_config_file':
    ensure  => present,
    path    => "${mcollective::params::mcollective_config_dir}/${mcollective::params::mcollective_config_file}",
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("${module_name}/${mcollective::params::mcollective_config_file}.erb"),
  }
}
