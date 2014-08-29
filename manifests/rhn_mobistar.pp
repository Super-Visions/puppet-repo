class repo::rhn_mobistar  (
  $ensure = 'present',
  $proxy = undef,
  ){

  file{'/etc/yum.repos.d/rhn-mobistar.repo':
    ensure => $ensure,
    content => template('repo/repos/rhn-mobistar.repo.erb'),
  }

}
