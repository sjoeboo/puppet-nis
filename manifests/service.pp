class nis::service {
  service { 'ypbind':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    subscribe  => File['/etc/yp.conf'],
  }
}
