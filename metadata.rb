name 'et_kibana_lwrp'
maintainer 'Evertrue, Inc'
maintainer_email 'devops+opensource@evertrue.com'
license 'Apache 2.0'
description 'Installs/Configures kibana'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))

version '1.0.1'

%w(git chef_nginx apache2 ark libarchive java runit compat_resource).each do |cb|
  depends cb
end

supports 'ubuntu'
supports 'debian'
