node default {
 file {'/root/README':
  ensure => file,
  content => 'This is a puppet tutorial developed by Mayank Bhogal',
  }
}
node 'master.puppet.vm'{
 include role::master_server
 }
