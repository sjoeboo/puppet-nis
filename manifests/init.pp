class nis (
  String $package     = $nis::params::package,
  String $domain      = $nis::params::domain,
  Boolean $broadcast  = $nis::params::broadcast,
  Array $servers      = $nis::params::servers,
  ) inherits nis::params {
    class { '::nis::install': }
    class { '::nis::config':
      require => Class['::nis::install'],
    }
    class { '::nis::service':
      subscribe => Class[':nis::config'],
    }
  }
