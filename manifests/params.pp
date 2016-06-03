# Class: common::params
#
# This class set parameters used in this module
#
# Actions:
#   - Defines numerous parameters used by other classes
#
class common::params {
  $common_package_ensure = 'latest'

  case $::operatingsystem {
    'Amazon': {

    }
    'CentOS', 'OracleLinux', 'RedHat': {
      case $::operatingsystemmajrelease {
        '6': {

        }
        '7': {

        }
        default: {
          fail("The ${module_name} module is not supported on an ${::operatingsystem} ${::operatingsystemmajrelease} distribution.")
        }
      }
    }
    'Debian': {
      case $::operatingsystemmajrelease {
        '8': {

        }
        default: {
          fail("The ${module_name} module is not supported on an ${::operatingsystem} ${::operatingsystemmajrelease} distribution.")
        }
      }
    }
    default: {
      fail("The ${module_name} module is not supported on an ${::operatingsystem} based system.")
    }
  }
}