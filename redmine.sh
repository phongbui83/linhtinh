read -p "Nhap port Redmine ban muon mo: " RMPORT
docker pull buithephong/cresco-redmine:v2
docker run -it --privileged -p $RMPORT:80 -p 2222:22 buithephong/cresco-redmine:v2 --name redmine
sleep 30
DKID=$(docker ps | grep redmine | awk '{print $1}')
echo "hay go lenh ./start.sh && exit"
sleep 30
docker exec -it $DKID bash
echo "Truy cap http://$(hostname -i):$RMPORT username : phongbt pass: bcbcbcbc"
