# Class: lombok
# ===========================
#
# Full description of class lombok here.
#
# Parameters
# ----------
#
# * `sample parameter`
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
class lombok (
  $package_name = $::lombok::params::package_name,
  $install_url = $::lombok::params::install_url,
) inherits ::lombok::params {

  # validate parameters here

  class { '::lombok::install': } ->
  class { '::lombok::config': } ~>
  Class['::lombok']
}
