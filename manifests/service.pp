class mcollective::service {

  service{$mcollective::params::service:
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true
  }
}
