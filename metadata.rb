name 'et_kibana_lwrp'
maintainer 'Evertrue, Inc'
maintainer_email 'devops+opensource@evertrue.com'
license 'Apache 2.0'
description 'Installs/Configures kibana'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))

version '1.1.0'

%w(git chef_nginx apache2 ark java runit compat_resource).each do |cb|
  depends cb
end

depends 'libarchive', '>= 0.4.0'
depends 'elasticsearch', '~> 2.4'

supports 'ubuntu'
supports 'debian'
