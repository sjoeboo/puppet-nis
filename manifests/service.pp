class nis::service {
  service { 'ypbind':
    ensure    => running,
    enable    => true,
    subscribe => File['/etc/yp.conf'],
  }
}
