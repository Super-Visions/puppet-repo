class repo::centos  (
  $proxy = undef,
  $ensure = 'present',
  $products_baseurl = '',
  $deps_baseurl = '',
) {

  file{"/etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-${::operatingsystemmajrelease}":
    ensure => $ensure,
    source => "puppet:///modules/repo/keys/RPM-GPG-KEY-CentOS-${::operatingsystemmajrelease}",
  }

  file{'/etc/yum.repos.d/CentOS-Base.repo':
    ensure  => $ensure,
    content => template('repo/repos/CentOS-Base.repo.erb'),
  }

}
