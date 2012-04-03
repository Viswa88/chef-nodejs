package "curl" do
  action :install
end

bash "npm" do
  cwd "#{node["nodejs"]["dir"]}/src"
  code <<-EOH
    mkdir -p npm-v#{node["nodejs"]["npm"]["version"]} && \
    cd npm-v#{node["nodejs"]["npm"]["version"]}
    curl -L #{node["nodejs"]["npm"]["url"]} | tar xzf - --strip-components=1 && \
    make uninstall dev
  EOH
  not_if "#{node["nodejs"]["dir"]}/bin/npm -v 2>&1 | grep #{node["nodejs"]["npm"]["version"]}"
end
