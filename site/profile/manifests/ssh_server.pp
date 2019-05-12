class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDomIcMXGcVsLecKTYMzNs70kKQ0nqvL4l/ZkeGJIhS6bBkW13/gTwmPc1yw8QE3XZ3pLa2oMKdecgmjNwWH6G8ClxIlaoy6W/mBjrQYUjmtgfC7t8k0tkzg29SVTK/7ywkXUlGbClp7lubHWFiEvKVF03p3LNsepvSwypyzEub2R8YpW6HfBSAY64F2jKPsKzk8Cac8fRJiR7aTzD0CdPM4Uxelw0XLoexlYvI8pHQ2Ns/YkMB5zfWgzeCl0RQ9f5cXovIPLLOSh+XYeoEJhk9yI6DPdgW02HjGOOdStWLt+KSVuKb1jLJT7viDGHYUSo3U8BBV0qCnB/vmaLgjGX7',
  }  
}
