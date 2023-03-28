file {'/opt/minecraft':
  ensure => file,
}

file {'/etc/systemd/system/minecraft.service':
  ensure => file
  
}
