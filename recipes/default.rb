include_recipe "build-essential"

node_packages = value_for_platform(
  [ "debian", "ubuntu" ]                      => { "default" => [ "libssl-dev" ] },
  [ "amazon", "centos", "fedora", "centos" ]  => { "default" => [ "openssl-devel" ] },
  "default"   => [ "libssl-dev" ]
)

node_packages.each do |node_package|
  package node_package do
    action :install
  end
end

remote_file "#{Chef::Config[:file_cache_path]}/node-v#{node["nodejs"]["version"]}.tar.gz" do
  source node["nodejs"]["url"]
  checksum node["nodejs"]["checksum"]
end

execute "tar -xzf #{Chef::Config[:file_cache_path]}/node-v#{node["nodejs"]["version"]}.tar.gz" do
  cwd "#{node["nodejs"]["dir"]}/src"
  creates "#{node["nodejs"]["dir"]}/src/node-v#{node["nodejs"]["version"]}"
end

bash "install-node" do
  cwd "#{node["nodejs"]["dir"]}/src/node-v#{node["nodejs"]["version"]}"
  code <<-EOH
    ./configure --prefix=#{node["nodejs"]["dir"]} && make && make install
  EOH
  creates "#{node["nodejs"]["dir"]}/src/node-v#{node["nodejs"]["version"]}/node"
  not_if "#{node["nodejs"]["dir"]}/bin/node --version 2>&1 | grep #{node["nodejs"]["version"]}"
end

include_recipe "nodejs::npm"
