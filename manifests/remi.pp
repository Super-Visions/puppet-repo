class repo::remi {
  
  file{'/etc/pki/rpm-gpg/RPM-GPG-KEY-remi':
    ensure => present,
    source => 'puppet:///modules/repo/keys/RPM-GPG-KEY-remi',
  }

  file{'/etc/yum.repos.d/remi.repo':
    ensure => present,
    source => 'puppet:///modules/repo/repos/remi.repo',
  }

}
