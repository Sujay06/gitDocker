
sudo docker stop $(sudo docker ps -a -q)
sudo docker rm $(sudo docker ps -a -q)
cd /home/ubuntu
rm -rf dockerImageNode
git clone https://github.com/sujay06/dockerImageNode.git
cd dockerImageNode
sudo docker build -t sujay06/node-app .
sudo docker run -p 49160:8080 -d sujay06/node-app
