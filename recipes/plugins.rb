execute 'install logtrail plugin' do
  cwd "#{node['kibana']['install_path']}/kibana/current"
  command './bin/kibana plugin -i logtrail ' \
    "-u https://github.com/sivasamyk/logtrail/releases/download/0.1.4/logtrail-4.x-0.1.4.tar.gz"
  creates "#{node['kibana']['install_path']}/kibana/current/installedPlugins/logtrail/package.json"
  action :run
  notifies :restart, 'service[kibana]'
end

file "#{node['kibana']['install_path']}/kibana/current/installedPlugins/logtrail/logtrail.json" do
  content JSON.pretty_generate(node['kibana']['plugins']['logtrail']['config'])
  notifies :restart, 'service[kibana]'
end
