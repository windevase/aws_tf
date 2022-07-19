#! /bin/bash
sudo su -
yum install -y httpd
cat > /var/www/html/index.html << EOF
<html>
<body>
<h1>AWS-TERRAFORM-WEBSERVER</h1>
</body>
</html>
EOF
systemctl start httpd
systemctl restart httpd
systemctl enable httpd