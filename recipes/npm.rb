bash "install-npm" do
  cwd Chef::Config[:file_cache_path]
  code <<-EOH
    tar -xzf npm-v#{node["nodejs"]["npm"]["version"]}.tgz
    (cd npm && make uninstall dev)
  EOH
  action :nothing
  not_if "#{node["nodejs"]["dir"]}/bin/npm -v 2>&1 | grep #{node["nodejs"]["npm"]["version"]}"
end

remote_file "#{Chef::Config[:file_cache_path]}/npm-v#{node["nodejs"]["npm"]["version"]}.tgz" do
  source node["nodejs"]["npm"]["url"]
  checksum node["nodejs"]["npm"]["checksum"]
  notifies :run, resources(:bash => "install-npm"), :immediately
end
