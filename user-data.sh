#!/bin/bash
yum update -y
yum install -y python3 git
pip3 install flask
git clone https://github.com/your-repo/backend.git /home/ec2-user/app
python3 /home/ec2-user/app/app.py &
