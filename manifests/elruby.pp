class repo::elruby (
  $proxy = undef,
) {
  
  file{'/etc/yum.repos.d/elruby.repo':
    ensure => present,
    content => template('repo/repos/elruby.repo.erb'),
  }

}
