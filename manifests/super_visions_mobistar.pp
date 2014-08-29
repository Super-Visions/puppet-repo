class repo::super_visions_mobistar (
  $ensure = 'present',
  ) {

  file{'/etc/yum.repos.d/super-visions-mobistar.repo':
    ensure => $ensure,
    content => template('repo/repos/super-visions-mobistar.repo.erb'),
  }

}
