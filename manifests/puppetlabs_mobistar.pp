class repo::puppetlabs_mobistar (
  $ensure = 'present',
){

  file{'/etc/yum.repos.d/puppetlabs-mobistar.repo':
    ensure => $ensure,
    source => 'puppet:///modules/repo/repos/puppetlabs-mobistar.repo',
    owner  => 'root',
    group  => 'root',
  }

}
