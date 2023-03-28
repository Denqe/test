file {'/opt/minecraft':
  ensure => file,
}

file {'/etc/systemd/system/minecraft.service':
  ensure => file
  source => /vagrant/minecraft.service
}
