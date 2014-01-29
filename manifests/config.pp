class repo::config ( $proxyhost, $proxyport = 80, $proxyuser = undef, $proxypass = undef, $ensure = 'present' ) {

  notify { "Use class repo::yum_conf instead!!!!!!!!!!!!!!!!!!!!!": }|
  #file { '/etc/yum.conf':
  #  ensure  => $ensure,
  #  content => template('repo/yum.conf.erb'),
  #}
}
