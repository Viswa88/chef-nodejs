default["nodejs"]["version"]          = "0.6.9"
default["nodejs"]["dir"]              = "/usr/local"
default["nodejs"]["url"]              = "http://nodejs.org/dist/node-v#{node["nodejs"]["version"]}.tar.gz"
default["nodejs"]["checksum"]         = "484ab6b3da6195339544c16aff17f747aa85d1dd15d765d6724aa8a4ecda03ca"

default["nodejs"]["npm"]["version"]   = "1.1.9"
default["nodejs"]["npm"]["url"]       = "http://npmjs.org/dist/npm-#{node["nodejs"]["npm"]["version"]}.tgz"
default["nodejs"]["npm"]["checksum"]  = "ffed2126ae323c084aca2ab6f62c33a921de39ac6e9b510a1d7c5ce20f7abf9a"
