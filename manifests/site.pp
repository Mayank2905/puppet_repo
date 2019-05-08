node default {
 file {'/root/README':
  ensure => file,
  content => 'This is a puppet tutorial developed by Mayank Bhogal',
  }
}
