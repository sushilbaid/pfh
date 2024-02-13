#!/bin/bash
# TODO: integrate script when ec2 instance come up
sudo apt install python-pip3 -y
pip install --user pipenv
export PATH=/home/ubuntu/local/bin:$PATH
git clone https://github.com/sushilbaid/pfh.git /home/ubuntu/flask-app
cd /home/ubuntu/flask-app
pipenv install
python app.py

#python3 -m venv venv
#source venv/bin/activate
#pip install -r requirements.txt
