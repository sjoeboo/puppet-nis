class nis::install (
  $package = $nis::package,
  ) {

    package {$package:
      ensure => installed,
    }
}
