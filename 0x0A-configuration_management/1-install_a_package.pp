#installs puppet-lint

package{ 'python':
  ensure    => '3.8.10',
  provider  => 'pip3',
}
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
package{ 'Werkzeug':
  ensure   =>'2.1.1',
  provider =>'pip3',
  require  => Package['Flask']i
}

