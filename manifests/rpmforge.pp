class repo::rpmforge (
  $proxy = undef,
  $ensure = 'present',
) {

  file{'/etc/pki/rpm-gpg/RPM-GPG-KEY-rpmforge-dag':
    ensure => $ensure,
    source => 'puppet:///modules/repo/keys/RPM-GPG-KEY-rpmforge-dag',
  }

  file{'/etc/yum.repos.d/rpmforge.repo':
    ensure => $ensure,
    content => template('repo/repos/rpmforge.repo.erb'),
  }

}
