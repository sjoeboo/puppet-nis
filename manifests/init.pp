class nis (
  String $package     = $nis::params::package,
  String $domain      = $nis::params::domain,
  Boolean $broadcast  = $nis::params::broadcast,
  Array $servers      = $nis::params::servers,
  ) inherits nis::params {
    include ::nis::install
    include ::nis::config
    include ::nis::service
  }
