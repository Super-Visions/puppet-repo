class repo::super-visions-mobistar {
  
  file{'/etc/yum.repos.d/super-visions-mobistar.repo':
    ensure => present,
    source => 'puppet:///modules/repo/repos/super-visions-mobistar.repo',
  }

}
