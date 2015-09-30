# == Class lombok::install
#
# This class is called from lombok for install.
#
class lombok::install {

  exec {'wget_lombok':
    command => "/usr/bin/wget --progress=bar ${::lombok::binary_url}${::lombok::package_name}",
    unless  => "/usr/bin/test -f /tmp/${::lombok::package_name}",
    cwd     => '/tmp',
  }
exec {'copy_lombok_jar':
      command => "/bin/cp /tmp/${::lombok::package_name} ${::lombok::install_location}/lombok.jar",
      unless  => "/usr/bin/test -f  ${::lombok::install_location}/lombok.jar",
      cwd     => '/opt',
      require => Exec['wget_lombok'],
    }

file_line { 'lombok_config':
      path    => '/opt/sts-bundle/sts-home/STS.ini',
      line    => '-javaagent:lombok.jar',
      require => Exec['copy_lombok_jar'],
}

}
