class repo::rhn_mobistar {
  
  file{'/etc/yum.repos.d/rhn-mobistar.repo':
    ensure => present,
    source => 'puppet:///modules/repo/repos/rhn-mobistar.repo',
  }

}
