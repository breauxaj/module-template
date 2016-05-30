class template (
  $ensure = 'latest'
) inherits ::template::params {
  package { $::template::params::template_package:
    ensure => $ensure,
  }

  service { $::template::params::template_service:
    ensure => 'running',
    enable => true,
  }

}