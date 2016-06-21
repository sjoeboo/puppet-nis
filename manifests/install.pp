class nis::install (
  $package = $nis::pacakge,
  ) {

    package {$package:
      ensure => installed,
    }
}
