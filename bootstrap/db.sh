# Clean yum
yum clean all

# Update yum packages
yum -y update

# Install wget
yum -y install wget

# Download repository packages
wget https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm

# Add software repositories
md5sum mysql80-community-release-el7-3.noarch.rpm

# Update Software repositories
rpm -ivh mysql80-community-release-el7-3.noarch.rpm

# Install MySQL
yum -y install mysql-server

# Enable at Startup
systemctl enable mysqld

# Start mysql
systemctl start mysqld