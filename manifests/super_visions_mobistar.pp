class repo::super_visions_mobistar (
  $ensure = 'present',
  ) {

  file{'/etc/yum.repos.d/super-visions-mobistar.repo':
    ensure => $ensure,
    source => 'puppet:///modules/repo/repos/super-visions-mobistar.repo',
  }

}
