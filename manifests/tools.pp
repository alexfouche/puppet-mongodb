# Class for installing MongoDB tools (CLI).
#
# == Parameters
#
# [ensure] Desired ensure state of the package. Optional.
#   Defaults to 'true'
#
# [package_name] Name of the package to install the tools from. Default
#   is repository dependent.
#
class mongodb::tools (
  String $ensure       = $mongodb::params::package_ensure_tools,
  String $package_name = $mongodb::params::tools_package_name,
) inherits mongodb::params {

  contain mongodb::tools::install
}
