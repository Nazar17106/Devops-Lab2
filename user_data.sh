#!/bin/bash

packages=(mc vim git httpd amazon-ssm-agent)

yum -y update

yum -y install "${packages[@]}"

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

systemctl enable amazon-ssm-agent
systemctl restart amazon-ssm-agent

