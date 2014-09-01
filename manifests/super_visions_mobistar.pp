#
# Internal repo
#
class repo::super_visions_mobistar (
  $ensure = 'present',
  $proxy = undef,
) {

  file{'/etc/yum.repos.d/super-visions-mobistar.repo':
    ensure  => $ensure,
    content => template('repo/repos/super-visions-mobistar.repo.erb'),
  }

}
