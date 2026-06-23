cat << 'EOF' > ~/UTN-FRA_SO_Examenes/202406/docker/run.sh
#!/bin/bash
docker run -d -p 8080:80 pedrogambale/web1-perezgambale:latest
EOF

chmod +x ~/UTN-FRA_SO_Examenes/202406/docker/run.sh
~/UTN-FRA_SO_Examenes/202406/docker/run.sh
sudo ~/UTN-FRA_SO_Examenes/202406/docker/run.sh
cat << 'EOF' > ~/RTAExamen$(date +%Y%m%d)/Punto_C.sh
#!/bin/bash
cd ~/UTN-FRA_SO_Examenes/202406/docker/
sudo docker build -t pedrogambale/web1-perezgambale:latest .
sudo docker push pedrogambale/web1-perezgambale:latest
./run.sh
EOF
