sudo chmod +x /usr/local/bin/PerezGambaleAltaUser-Groups.sh
sudo /usr/local/bin/PerezGambaleAltaUser-Groups.sh vagrant $LISTA_PATH
tail -n 10 /etc/passwd
cd ~/UTN-FRA_SO_Examenes/202406/docker/
vim index.html
history
vim index.html
cd ~/UTN-FRA_SO_Examenes/202406/docker/
cd ~/UTN-FRA_SO_Examenes/202406/docker/
vim index.html
docker build -t pedrogambale/web1-perezgambale:latest .
sudo usermod -a -G docker vagrant
cat << 'EOF' > Dockerfile
FROM nginx
COPY index.html /usr/share/nginx/html/index.html
EOF

sudo docker build -t pedrogambale/web1-perezgambale:latest
sudo docker build -t pedrogambale/web1-perezgambale:latest .
sudo docker push pedrogambale/web1-perezgambale:latest
