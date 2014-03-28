class repo::yum_conf ( 
  $proxy_host = undef, 
  $proxy_port = 80, 
  $proxy_address = undef,
  $proxy_proto = 'http', 
  $proxy_user = undef, 
  $proxy_pass = undef, 
  $proxy_ensure = 'present' 
) {

  if $proxy_host or $proxy_address {
    #fail('Class repo::yum_conf needs either $proxy_host or $proxy_address set.')

    if ! $proxy_address {
      $proxy_string = "${proxy_host}:${proxy_port}"
    } else {
      $proxy_string = $proxy_address
    }

    if $proxy_ensure == 'present' {
      $yum_proxy_action = 'set'
    } else {
      $yum_proxy_action = 'rm'
    }

    augeas {'yum.conf.main.proxy':
      context => "/files/etc/yum.conf/main",
      changes => [ "${yum_proxy_action} proxy ${proxy_proto}://${proxy_string}", ],
    } 
  }

}
