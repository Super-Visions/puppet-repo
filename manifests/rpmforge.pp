class repo::rpmforge (
  $proxy = undef,
) {
  
  file{'/etc/pki/rpm-gpg/RPM-GPG-KEY-rpmforge-dag':
    ensure => present,
    source => 'puppet:///modules/repo/keys/RPM-GPG-KEY-rpmforge-dag',
  }

  file{'/etc/yum.repos.d/rpmforge.repo':
    ensure => present,
    content => template('repo/repos/rpmforge.repo.erb'),
  }

}
