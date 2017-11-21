class profile::docker {
  package {'docker':
    ensure => present,
  }
}
