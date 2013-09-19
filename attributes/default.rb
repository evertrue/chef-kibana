default['kibana']['install_type'] = "zipfile" # repo | zipfile
default['kibana']['repo_url'] = "git://github.com/elasticsearch/kibana"
default['kibana']['repo_branch'] = "master"
default['kibana']['zipfile_url'] = "http://download.elasticsearch.org/kibana/kibana/kibana-latest.zip"
default['kibana']['zipfile_checksum'] = "89c6461f12664950d816d53757bec57af703d12e27c2248c68cdeeec1b02ce2e" # sha256 ( shasum -a 256 FILENAME )
default['kibana']['webserver'] = "nginx"
default['kibana']['install_path'] = "/opt"
default['kibana']['install_dir'] = "#{node['kibana']['install_path']}/kibana"
default['kibana']['es_server'] = "127.0.0.1"
default['kibana']['es_port'] = "9200"
default['kibana']['es_role'] = "elasticsearch_server"
default['kibana']['user'] = ''
default['kibana']['config_template'] = 'config.js.erb'
default['kibana']['config_cookbook'] = 'kibana'
default['kibana']['webserver_hostname'] = node.name
default['kibana']['webserver_aliases'] = [node.ipaddress]
default['kibana']['webserver_listen'] = node.ipaddress
default['kibana']['webserver_port'] = 80
