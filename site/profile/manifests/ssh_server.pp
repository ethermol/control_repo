class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCuOKzl1DnjAoXMl0A6dukYzBbOJMOxrZC8UBd0Sg32CuYqb2zrA3fpmdxVcUdhfJDKF17/Hx9rnEt06pd9lMbBT0P3EnHf3cru4tUd62fdJ+Ek+isGb0/vafNE+NqoLeDjGGgUyvTFBdm6tKTFw9kZaSP/dE/8+hx3k8HJzXkg2+zMNoYPzC7Pj9FlBtTqGIUyuH66u+zlwFInw5K012BvWg+p8mw31kISauzmRGI4W+13Twp+IbcpwgemTKWnAD5OzmYIRnG159pnmt+vq5F5hcWyEh+tR/14M7iTcroCngTySPmHXd+/Fxp/367b88xmEOChRty9XugI4/Ye94bP',
	}  
}
