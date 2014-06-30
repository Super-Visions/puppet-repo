class repo::puppetlabs (
  $proxy = undef,
  $ensure = 'present',
  $products_baseurl = 'http://yum.puppetlabs.com/el/$releasever/products/$basearch',
  $deps_baseurl = 'http://yum.puppetlabs.com/el/$releasever/dependencies/$basearch',
) {

  file{'/etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs':
    ensure => $ensure,
    source => 'puppet:///modules/repo/keys/RPM-GPG-KEY-puppetlabs',
  }

  file{'/etc/yum.repos.d/puppetlabs.repo':
    ensure => $ensure,
    content => template('repo/repos/puppetlabs.repo.erb'),
  }

  file{'/etc/yum.repos.d/puppetlabs-mobistar.repo':
    ensure => absent,
  }

}
