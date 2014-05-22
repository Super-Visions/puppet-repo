class repo::rhn_mobistar  (
  $ensure = 'present',
  ){

  file{'/etc/yum.repos.d/rhn-mobistar.repo':
    ensure => $ensure,
    source => 'puppet:///modules/repo/repos/rhn-mobistar.repo',
  }

}
