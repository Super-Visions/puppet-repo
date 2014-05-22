class repo::epel (
  $noproxy = true,
  $proxy = undef,
  $ensure = 'present',
) {

  file{'/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6':
    ensure => $ensure,
    source => 'puppet:///modules/repo/keys/RPM-GPG-KEY-EPEL-6',
  }

  file{'/etc/yum.repos.d/epel.repo':
    ensure  => $ensure,
    content => template('repo/repos/epel.repo.erb'),
  }

}
