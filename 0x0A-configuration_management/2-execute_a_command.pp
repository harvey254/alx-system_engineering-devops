# create a manifest that kills a process named killmenow
# using pkill with puppet

exec { 'processkill':
  command => 'pkill -f killmenow',
  path    => '/usr/bin',
}
