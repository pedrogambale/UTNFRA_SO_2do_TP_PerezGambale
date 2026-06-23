cat << 'EOF' > ~/UTN-FRA_SO_Examenes/202406/docker/run.sh
#!/bin/bash
docker run -d -p 8080:80 pedrogambale/web1-perezgambale:latest
EOF
