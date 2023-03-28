file {'/opt/minecraft':
  ensure => file,
}

file {'/etc/systemd/system/minecraft.service':
  ensure => file
  source => '/vagrant/minecraft.service'
}

exec {'install':
  command => 'wget https://www.minecraft.net/ru-ru/download/server'
  cwd => '/opt/minecraft',
  require => File['/opt/minecraft'],
}
