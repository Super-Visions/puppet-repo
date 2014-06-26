class repo::puppetlabs_mobistar (
  $proxy  = undef,
  $ensure = 'present',
){

  file{'/etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs':
    ensure => $ensure,
    source => 'puppet:///modules/repo/keys/RPM-GPG-KEY-puppetlabs',
  }

  file{'/etc/yum.repos.d/puppetlabs.repo':
    ensure => $ensure,
    content => template('repo/repos/puppetlabs-mobistar.repo.erb'),
  }

}
