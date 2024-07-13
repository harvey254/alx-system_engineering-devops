#!/usr/bin/env bash
# sets up a client SSH configuration file so that we can connect to a server without using a password

file { 'etc/ssh/ssh_config':
  ensure => 'present',
}
file_line { 'Declare identity file':
  ensure  => 'present',
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentityFile ~/.ssh/school',
  match => 'IdentityFile',
}

file_line { 'Turn off passwd auth':
  path    => '/etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
  replace => true,
}

