# Clean yum
yum clean all

# Update yum packages
yum -y update

# EPEL and remi
yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm

# Yum utils packages
yum -y install yum-utils

# Enable remi
yum-config-manager --enable remi-php70

# Install php modules
yum -y install php php-mcrypt php-cli php-gd php-curl php-mysql php-ldap php-zip php-fileinfo 