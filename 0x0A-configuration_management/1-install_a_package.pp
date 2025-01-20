# This Puppet manifest installs Flask version 2.1.0 and Werkzeug version 2.1.1 using pip3 on Ubuntu 20.04 LTS.

exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  path    => ['/usr/bin', '/bin'],
  unless  => '/usr/bin/pip3 show Flask | grep -q "Version: 2.1.0"',
}

exec { 'install_werkzeug':
  command => '/usr/bin/pip3 install Werkzeug==2.1.1',
  path    => ['/usr/bin', '/bin'],
  unless  => '/usr/bin/pip3 show Werkzeug | grep -q "Version: 2.1.1"',
  require => Exec['install_flask'],
}

