#installs puppet-lint

package { 'pip3':
  ensure => 'present',
  provider => 'pip3',
}

package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['pip3'],
}

