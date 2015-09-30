# == Class lombok::params
#
# This class is meant to be called from lombok.
# It sets variables according to platform.
#
class lombok::params {
  
  case $::osfamily {
    'Debian': {
      $package_name = 'lombok-1.0.jar'
      $binary_url = 'http://java-nexus.sixt.de:8081/nexus/content/repositories/thirdparty/org/projektlombok/lombok/1.0/'
      $install_location = '/opt/sts-bundle/sts-home'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}