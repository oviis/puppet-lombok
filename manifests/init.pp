
class lombok {
	
	$tar_filename = 'lombok.jar'

	exec {"wget_lombok":
            command => "/usr/bin/wget --progress=bar https://projectlombok.org/downloads/${tar_filename}",
            unless  => "/usr/bin/test -f /tmp/${tar_filename}",
            cwd     => "/tmp"
            #timeout => 0
    }

	exec {"copy_lombok_jar":
            command => "/bin/cp /tmp/${tar_filename} /opt/sts-bundle/sts-home",
            unless  => "/usr/bin/test -f /opt/sts-bundle/sts-home/${tar_filename}",
            cwd     => "/opt",
            require => Exec["wget_lombok"],	
    }

	file {"/tmp/$tar_filename":
		ensure => absent,
		require => Exec["copy_lombok_jar"]
	}

}
