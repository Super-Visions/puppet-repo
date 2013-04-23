class repo::config ( $proxyhost, $proxyport = 80, $proxyuser = undef, $proxypass = undef ) {
  file { '/etc/yum.conf':
    ensure  => present,
    content => template('repo/yum.conf.erb'),
  }
}
