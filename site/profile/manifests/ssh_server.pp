class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  
  }
  ssh_authorized_key {'root@master.puppet.vm':
    ensure   => present,
    user     => 'root',
    type     => 'ssh-rsa',
    key      => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC6bFChmbwCIGsfYMMUdXLweG6j5vSTtxazMJdKNAAsSyhTZz4BB0hmPG0FKhrTwKsFD4mGPPG8ocGE/+bvKJkcUUHxDv2IPJ2l0k9S2dywFsNK4RGiZ1eFwoUcYL8YfCWPVCpRKk/n1I77LHhdClA9UlUUm5IdYsoNpS1fqua4rS98ibEP6Y684mt3G0UcSWd3i/FVRSDO07qqJPnjU0bKk9ItvFmiOHNz7SLif59IkX3uz9R43jHS2Dn+it4MtOb0I8Ana0aAziw6L/xd+dp+saPSMK+FT6BcQ9tDxfGVX3qpUTiYj4CijCH/OrJAEWkJTTRES8cHIKCN7tt/Q3x3',
  }
}
