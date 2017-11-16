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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDUHTQklE1fUHIG/yvtTBV+JgsHjtEC478b99OeQ9auBWQFOm8KlviK0/MhUjpHK3Ijxbz7y5nVkwfW3B4qExMdzBgr/pMCzADPVHdFg8IdOOcj0oaz+/cx5jErZK+EkUlyvfsUGGiSOSB58ITNLmX885xkJTEemVVvqdxZGcIczM/KFHae69OUGn56ZPDJqlnb/f6zXKAW17cpXkrCM3gQnb779utoTXZL5Zq2VkoyJB8sDr/GfTCg8+gcDtQ14yewXxINePiOgKtKyhAMXTlfJcqvxValtU/oNH8lGnfAyTz/bqEZuuqtSb1QSxH4uKYix/DXC4ZiRnLAjh5tmiBj',
	}  
}
