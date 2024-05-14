# Installs Flask version 2.1.0 from pip3 using Puppet
package { 'flask':
  ensure         => '2.1.0',
  provider       => 'pip3',
  install_options => ['--user', '--no-warn-script-location'],
}
