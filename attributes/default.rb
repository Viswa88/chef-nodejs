default["nodejs"]["version"]        = "0.6.9"
default["nodejs"]["dir"]            = "/usr/local"
default["nodejs"]["url"]            = "http://nodejs.org/dist/node-v#{node["nodejs"]["version"]}.tar.gz"

default["nodejs"]["npm"]["version"] = "1.1.9"
default["nodejs"]["npm"]["url"]     = "http://npmjs.org/dist/npm-#{node["nodejs"]["npm"]["version"]}.tgz"
