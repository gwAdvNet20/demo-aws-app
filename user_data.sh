#!/bin/bash
sudo apt-get update -y 
sudo apt-get install -y sysbench
echo 'export NICKNAME='$(curl http://169.254.169.254/latest/meta-data/instance-type) >> /home/ubuntu/.bashrc
echo 'PS1="[\u@$NICKNAME \W]\\$ "' >> /home/ubuntu/.bashrc
export NVM_DIR=/home/ubuntu/.nvm
export NVM_CD_FLAGS=""
export NVM_IOJS_ORG_MIRROR=https://iojs.org/dist
export NVM_PATH=/home/ubuntu/.nvm/versions/node/v10.18.1/lib/node
export NVM_BIN=/home/ubuntu/.nvm/versions/node/v10.18.1/bin
export NVM_NODEJS_ORG_MIRROR=https://nodejs.org/dist
export PATH=$PATH:/home/ubuntu/.nvm/versions/node/v10.18.1/bin
git clone https://github.com/thelimeburner/demo-aws-app.git
cd demo-aws-app
npm install .
nohup node index.js & 


#Check output and status of this on your instance by doing: cat /var/log/cloud-init-output.log
# AMI that this will work with: ami-03db149175a345d63
