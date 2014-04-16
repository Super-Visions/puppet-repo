class repo::puppetlabs (
  $proxy = undef,
) {
  
  file{'/etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs':
    ensure => present,
    source => 'puppet:///modules/repo/keys/RPM-GPG-KEY-puppetlabs',
  }

  file{'/etc/yum.repos.d/puppetlabs.repo':
    ensure => present,
    content => template('repo/repos/puppetlabs.repo.erb'),
  }

}
