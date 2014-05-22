class repo::passenger (
  $proxy = undef,
  $ensure = 'present',
) {

  file{'/etc/pki/rpm-gpg/RPM-GPG-KEY-passenger':
    ensure => $ensure,
    source => 'puppet:///modules/repo/keys/RPM-GPG-KEY-stealthymonkeys',
  }

  file{'/etc/yum.repos.d/passenger.repo':
    ensure  => $ensure,
    content => template('repo/repos/passenger.repo.erb'),
  }

}
