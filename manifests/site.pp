node default {
  file {'/root/README':
    ensure  => file,
    content => 'this is a read me',
    owner   => 'root',
  }
  file {'/root/README':
    owner => 'root',
  
}
