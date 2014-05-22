class repo::google_chrome (
  $proxy = undef,
  $ensure = 'present',
) {

  file{'/etc/yum.repos.d/google-chrome.repo':
    ensure => $ensure,
    content => template('repo/repos/google-chrome.repo.erb'),
  }

}
