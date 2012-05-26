# Description #

Installs and configures Node.js.  Much of the work in this cookbook reflects
work done by [Librato](https://github.com/librato/nodejs-cookbook).

# Requirements #

## Platforms ##

* Ubuntu 11.10 (Oneiric)
* Ubuntu 12.04 (Precise)

## Cookbooks ##

* build-essential

# Attributes #

* `node["nodejs"]["version"]` - Version of Node.js to install.
* `node["nodejs"]["dir"]` - Directory to install into.
* `node["nodejs"]["url"]` - URL to the Node.js archive.
* `node["nodejs"]["npm"]["version"]` - Version of npm to install.
* `node["nodejs"]["npm"]["url"]` - URL to the npm archive.

# Recipes #

* `recipe[nodejs]` will install Node.js and npm.
* `recipe[nodejs::npm]` will install npm.

# Usage #

Currently only supports installation from source.
