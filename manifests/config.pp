class nis::config (
  $domain = $nis::domain,
  $broadcast = $nis::broadcast,
  $servers = $nis::servers,
  ) {

    file { '/etc/yp.conf':
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      content => template('nis/yp.conf.erb'),
    }
  }
