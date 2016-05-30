class template::params {
  case $::osfamily {
    'Debian': {
      case $::operatingsystemmajrelease {
        '8': {
          
        }
        default: {
          fail("The ${module_name} module is not supported on an ${::operatingsystem}${::operatingsystemmajrelease} distribution.")
        }
      }
    }
    'RedHat': {
      case $::operatingsystemmajrelease {
        '6': {
          
        }
        '7': {
          
        }
        default: {
          fail("The ${module_name} module is not supported on an ${::operatingsystem}${::operatingsystemmajrelease} distribution.")
        }
      }
    }
    'Linux': {
      case $::operatingsystem {
        'Amazon': {

        }
        default: {
          fail("The ${module_name} module is not supported on an ${::operatingsystem} distribution.")
        }
      }
    }
    default: {
      fail("The ${module_name} module is not supported on an ${::osfamily} based system.")
    }
  }
}