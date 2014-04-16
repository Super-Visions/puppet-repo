class repo::remi (
  $proxy = undef,
) {
  
  file{'/etc/pki/rpm-gpg/RPM-GPG-KEY-remi':
    ensure => present,
    source => 'puppet:///modules/repo/keys/RPM-GPG-KEY-remi',
  }

  file{'/etc/yum.repos.d/remi.repo':
    ensure => present,
    content => template('repo/repos/remi.repo.erb'),
  }

}
