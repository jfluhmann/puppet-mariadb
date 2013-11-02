# Class: mariadb::params
#
# Defines all the variables used in the module.
#
class mariadb::params {

  $package_name = $::osfamily ? {
    default => 'mariadb',
  }

  $service_name = $::osfamily ? {
    default => 'mariadb',
  }

  $config_file_path = $::osfamily ? {
    default => '/etc/mariadb/mariadb.conf',
  }

  $config_file_mode = $::osfamily ? {
    default => '0644',
  }

  $config_file_owner = $::osfamily ? {
    default => 'root',
  }

  $config_file_group = $::osfamily ? {
    default => 'root',
  }

  $config_dir_path = $::osfamily ? {
    default => '/etc/mariadb',
  }

  case $::osfamily {
    'Debian','RedHat','Amazon': { }
    default: {
      fail("${::operatingsystem} not supported. Review params.pp for extending support.")
    }
  }
}