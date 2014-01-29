class repo::yum_conf ( 
  $proxy_host, 
  $proxy_port = 80, 
  $proxy_proto = 'http', 
  $proxy_user = undef, 
  $proxy_pass = undef, 
  $proxy_ensure = 'present' 
) {

  if $proxy_ensure == 'present' {
    $yum_proxy_action = 'set'
  } else {
    $yum_proxy_action = 'rm'
  }

  augeas {'yum.conf.main.proxy':
    context => "/files/etc/yum.conf/main",
    changes => [ "${yum_proxy_action} proxy ${proxy_proto}://${proxy_host}:${proxy_port}", ],
  } 


}
