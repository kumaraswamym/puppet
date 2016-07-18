class systemusers {
   user { 'admin':
        ensure  => present,
        shell   => '/bin/bash',
        home    => '/home/admin',
        gid     => 'sudoers',
        managehome => true,
        password => 'admin123',
     }
  user { 'kumar':
        ensure  => present,
        shell   => '/bin/bash',
        home    => '/home/kumar',
        gid     => 'sudoers',
        managehome => true,
        password => 'kumar123',
     }

  group { 'sudoers':
      ensure => present,
      }
 }

