remote_file "#{Chef::Config[:file_cache_path]}/npm-v#{node["nodejs"]["npm"]["version"]}.tgz" do
  source node["nodejs"]["npm"]["url"]
  checksum node["nodejs"]["npm"]["checksum"]
end

directory "#{node["nodejs"]["dir"]}/src/npm-v#{node["nodejs"]["npm"]["version"]}" do
  mode "0755"
end

bash "install-npm" do
  cwd "#{node["nodejs"]["dir"]}/src/npm-v#{node["nodejs"]["npm"]["version"]}"
  code <<-EOH
    tar -xzf #{Chef::Config[:file_cache_path]}/npm-v#{node["nodejs"]["npm"]["version"]}.tgz --strip-components=1 &&
    make uninstall dev
  EOH
  not_if "#{node["nodejs"]["dir"]}/bin/npm -v 2>&1 | grep #{node["nodejs"]["npm"]["version"]}"
end
