exec { 'apt-get update':
	command => '/usr/bin/apt-get update',
}

package { 'nginx':
	ensure => present,
	require => Exec['apt-get update'],
	enable => true
}

package { 'postgresql':
        ensure => present,
        require => Exec['apt-get update'],
	enable = true
}

service { "nginx":
	ensure => running,
	require => Package['nginx'],
}

service { "postgresql":
        ensure => running,
        require => Package['postgresql'],
}


