class repo::epel (
  $noproxy = true,
  $proxy = undef,
  $ensure = 'present',
) {

  case $::os_maj_version {
    '4': {
      fail( 'Version 4 not supported!')
    }
    # '5': {
    #   $keyfile = 'RPM-GPG-KEY-EPEL'
    #   $template = 'repo/repos/epel5.repo.erb'
    # }
    default: {
      $keyfile = "RPM-GPG-KEY-EPEL-${::os_maj_version}"
      $template = 'repo/repos/epel.repo.erb'
    }
  }

  file{"/etc/pki/rpm-gpg/${keyfile}":
    ensure => $ensure,
    source => "puppet:///modules/repo/keys/${keyfile}",
  }

  file{'/etc/yum.repos.d/epel.repo':
    ensure  => $ensure,
    content => template($template),
  }

}
