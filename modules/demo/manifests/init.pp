class demo {
 $dnsutil = $osfamily ? {
   'Redhat' => 'bind-utils',
   'Debian' => 'dnsutils',
  }
 $topscopevar = "12345"
 $test = "123"
 package {['tree',$dnsutil]:
        ensure => present,
  } 
 file {'/etc/welcome':
       ensure => file,
       owner  => root,
       group  => root,
       content => template('demo/welcome.erb'),
       mode => "0777",
     }
  file {'/etc/tmp':
       ensure => directory,
       owner  => root,
       group  => root,
       mode => "0755",
     }
 notify { "${topscopevar} is your top scope variable":}
 notify { "${nodescopevar} is your top scope variable":}
 notify { "${test} is your class scope variable":}  

}

