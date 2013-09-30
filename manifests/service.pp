class mcollective::service {

  service{$mcollective::params::mcollective_service:
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true
  }
}
