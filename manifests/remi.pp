class repo::remi (
  $proxy = undef,
  $ensure = 'present',
) {

  file{'/etc/pki/rpm-gpg/RPM-GPG-KEY-remi':
    ensure => $ensure,
    source => 'puppet:///modules/repo/keys/RPM-GPG-KEY-remi',
  }

  file{'/etc/yum.repos.d/remi.repo':
    ensure => $ensure,
    content => template('repo/repos/remi.repo.erb'),
  }

}
