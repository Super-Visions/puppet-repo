class repo::google_chrome {
  
  file{'/etc/yum.repos.d/google-chrome.repo':
    ensure => present,
    source => 'puppet:///modules/repo/repos/google-chrome.repo',
  }

}
