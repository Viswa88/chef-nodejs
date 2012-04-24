maintainer        "Hector Castro"
maintainer_email  "hectcastro@gmail.com"
license           "Apache 2.0"
description       "Installs and configures Node.js."
version           "0.0.3"
recipe            "nodejs", "Installs and configures Node.js and npm"
recipe            "nodejs::npm", "Installs and configures npm"

depends "build-essential"

%w{ ubuntu }.each do |os|
    supports os
end

