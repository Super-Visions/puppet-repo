class repo::epel (
  $noproxy = true,
  $proxy = undef, 
) {
  
  file{'/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6':
    ensure => present,
    source => 'puppet:///modules/repo/keys/RPM-GPG-KEY-EPEL-6',
  }

  file{'/etc/yum.repos.d/epel.repo':
    ensure  => present,
    content => template('repo/repos/epel.repo.erb'),
  }

}
