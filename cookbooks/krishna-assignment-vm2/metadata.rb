name 'krishna-assignment-vm2'
maintainer 'Krishna'
maintainer_email 'kpandey@xebia.com'
license 'all_rights'
description 'Installs/Configures krishna-assignment'
long_description 'Installs/Configures krishna-assignment-vm2'
version '0.1.0'

%w{ ubuntu debian centos redhat fedora }.each do |os|
  supports os
end

depends "nginx"
