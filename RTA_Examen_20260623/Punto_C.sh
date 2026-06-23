cat << 'EOF' > ~/RTAExamen$(date +%Y%m%d)/Punto_C.sh
#!/bin/bash
cd ~/UTN-FRA_SO_Examenes/202406/docker/
sudo docker build -t pedrogambale/web1-perezgambale:latest .
sudo docker push pedrogambale/web1-perezgambale:latest
./run.sh
EOF
