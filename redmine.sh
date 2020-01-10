docker pull buithephong/cresco-redmine:v2
docker run -it --privileged -p 80:80 -p 2222:22 buithephong/cresco-redmine:v2 --name redmine
sleep 30
DKID=$(docker ps | grep redmine | awk '{print $1}')
echo "hay go lenh ./start.sh"
sleep 10
docker exec -it $DKID bash
