Directory contents

cwd: the code resides here
nginx: nginx configuration conf.d is located here
nginx-logs: access-logs, error-logs, docker-compose.yml and status.sh

docker-compose.yml // this will run the application in localhost port 8080
status.sh this will check and count the status code of application that runs in nginx 

to check status code navigate to "docker exec -it nginx01" bash
cd /var/log/nginx/
run script ./status.sh
this will show all the web status page with counter


1. git clone the repository
2. cd /test01/nginx-logs/
3. run docker-compose up            
4. access http://localhost:8080    // this will show up the sample page


