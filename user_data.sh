#!/bin/bash

yum install -y mc
yum install -y vim
yum install -y git
yum install -y httpd

web_page="/var/www/html/index.html"
cat > "$web_page" <<HTML
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Page</title>
</head>
<body>
    <h1>This page working</h1>
</body>
</html>
HTML

systemctl enable httpd
systemctl restart httpd

