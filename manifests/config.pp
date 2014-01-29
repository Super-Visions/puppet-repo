class repo::config ( $proxyhost, $proxyport = 80, $proxyuser = undef, $proxypass = undef, $ensure = 'present' ) {
  file { '/etc/yum.conf':
    ensure  => $ensure,
    content => template('repo/yum.conf.erb'),
  }
}
