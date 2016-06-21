class nis::params {
  case $::osfamily {
    'RedHat': {
      $package = 'ypbind'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
  $domain   = 'nis'
  $broadcast = false
  $servers   = []
}
