class repo::rhn_mobistar  (
  $ensure = 'present',
  ){

  file{'/etc/yum.repos.d/rhn-mobistar.repo':
    ensure => $ensure,
    content => template('repo/repos/rhn-mobistar.repo.erb'),
  }

}
