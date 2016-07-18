class ssh::params {
   case $osfamily {
      'RedHat': { $ssh_name = 'sshd' 
                  $openssh  = 'openssh' 
                }
      'Debian': { $ssh_name = 'ssh' 
                  $openssh  = 'openssh-server'}
      default: { fail('OS not support by puppet module') }
    }
   #$ssh_name = $osfamily ? {
   #  RedHat => 'sshd',
   #  Debian => 'ssh',
   #  default  => 'value',
 # }

}
