file {'/opt/minecraft':
  ensure => directory,
}

file {'/etc/systemd/system/minecraft.service':
  ensure => file
  source => '/vagrant/minecraft.service'
}

exec {'download':
  command => 'wget https://www.minecraft.net/ru-ru/download/server'
  cwd => '/opt/minecraft',
  require => File['/opt/minecraft'],
}
exec {'install':
  command => 'java -Xmx1024M -Xms1024M -jar minecraft_server..jar nogui',
  cwd => '/opt/minecraft',
  #path =>
  require => Exec['download'],
}
