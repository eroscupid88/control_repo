node default {
 file {'/root/README':
  ensure  => file,
  content => 'just a text',
  owner   => 'root',
 }

 
 
}
node 'master.puppet.vm' {
 include role::master_server
 file {'/root/README':
  ensure => file,
  content => "welcome to ${os}\n",
 }
}
node 'minetest.puppet.vm' {
 include role::minecraft_server
}
node /^web/ {
 include role::app_server
}
node /^db/ {
 include role::db_server
}
