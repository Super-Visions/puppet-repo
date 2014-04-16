class repo::google_chrome (
  $proxy = undef,
) {
  
  file{'/etc/yum.repos.d/google-chrome.repo':
    ensure => present,
    content => template('repo/repos/google-chrome.repo.erb'),
  }

}
