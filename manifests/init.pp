#
# == Class: repo
#
# The repo class mange
#
# === Parameters
#
# This class does not take parameters as all parameters are fetched via hiera
# The parameter defaults are stored in the repo::data class
#
# === Variables
#
# No variables are used in the repo base class
#
# === Examples
#
#  class { repo: }
#
# === Authors
#
# Stefan Goethals <stefan.goethals@super-visions.com>
#
# === Copyright
#
# Copyright 2012 Super-Visions, unless otherwise noted.
#
class repo
{
  anchor { 'repo::start': }->
  class { 'repo::puppetlabs': }->
  class { 'repo::epel': }~>
  anchor { 'repo::end': }
}
