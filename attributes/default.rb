default["nodejs"]["version"]          = "0.6.13"
default["nodejs"]["dir"]              = "/usr/local"
default["nodejs"]["url"]              = "http://nodejs.org/dist/node-v#{node["nodejs"]["version"]}.tar.gz"
default["nodejs"]["checksum"]         = "6cf4311ecbc1700e88f4382a31b3a7017c1572cd641fd06e653fc1692c2cffff"

default["nodejs"]["npm"]["version"]   = "1.1.22"
default["nodejs"]["npm"]["url"]       = "http://npmjs.org/dist/npm-#{node["nodejs"]["npm"]["version"]}.tgz"
default["nodejs"]["npm"]["checksum"]  = "48500247d71735cb097094d6942ab6c128aa8d59e44adad42ea02b5c74b6a5f5"
