class repo::redhat (
  $rhn_enabled = false,
) {
  if $rhn_enable == false {
    exec { "backup-rhn-systemid":
      command => "/bin/bash -c '[ -f /etc/sysconfig/rhn/systemid ] && /bin/mv /etc/sysconfig/rhn/systemid /etc/sysconfig/rhn/systemid.puppet'",
      creates => "/etc/sysconfig/rhn/systemid.puppet",
    }
  } else {
    exec { "backup-rhn-systemid":
      command => "/bin/bash -c '[ -f /etc/sysconfig/rhn/systemid.puppet]  && /bin/mv /etc/sysconfig/rhn/systemid.puppet /etc/sysconfig/rhn/systemid'",
      creates => "/etc/sysconfig/rhn/systemid",
    }
  }
}
