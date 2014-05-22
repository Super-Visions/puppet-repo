class repo::elruby (
  $proxy = undef,
  $ensure = 'present',
) {

  file{'/etc/yum.repos.d/elruby.repo':
    ensure => $ensure,
    content => template('repo/repos/elruby.repo.erb'),
  }

}
