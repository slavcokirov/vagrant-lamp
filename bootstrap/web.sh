# Clean yum
yum clean all

# Update yum packages
yum -y update

# Install apache
yum -y install httpd

# Enable at start
systemctl enable httpd

# Start
systemctl start httpd