# == Class lombok::service
#
# This class is meant to be called from lombok.
# It ensure the service is running.
#
class lombok::service {

  service { $::lombok::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
