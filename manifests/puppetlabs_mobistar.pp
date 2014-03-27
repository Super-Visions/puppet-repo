class repo::puppetlabs_mobistar {
  
  file{'/etc/yum.repos.d/puppetlabs-mobistar.repo':
    ensure => present,
    source => 'puppet:///modules/repo/repos/puppetlabs-mobistar.repo',
  }

}
