class repo::elruby {
  
  file{'/etc/yum.repos.d/elruby.repo':
    ensure => present,
    source => 'puppet:///modules/repo/elruby.repo',
  }

}
