class repo::epel {
  
  file{'/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6':
    ensure => present,
    source => 'puppet:///modules/repo/RPM-GPG-KEY-EPEL-6',
  }

  file{'/etc/yum.repos.d/epel.repo':
    ensure => present,
    source => 'puppet:///modules/repo/epel.repo',
  }

}
