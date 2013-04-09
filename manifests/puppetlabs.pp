class repo::puppetlabs {
  
  file{'/etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs':
    ensure => present,
    source => 'puppet:///modules/repo/RPM-GPG-KEY-puppetlabs',
  }

  file{'/etc/yum.repos.d/puppetlabs.repo':
    ensure => present,
    source => 'puppet:///modules/repo/puppetlabs.repo',
  }

}
