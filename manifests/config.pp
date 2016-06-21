class nis::config (
  $domain = $nis::domain,
  $broadcast = $nis::broadcast,
  $servers = $nis::servers,
  $package = $nis::package,
  ) {

    file { '/etc/yp.conf':
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      content => template('nis/yp.conf.erb'),
      require => package[$package],
    }
  }
