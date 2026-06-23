> ~/.bash_history
history
sudo -v
LISTA_PATH=~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cp /usr/local/bin/PerezGambaleAltaUser-Groups.sh ~/RTAExamen$(date +%Y%m%d)/
cat << 'EOF' > ~/RTAExamen$(date +%Y%m%d)/Punto_B.sh
sudo /usr/local/bin/PerezGambaleAltaUser-Groups.sh vagrant $LISTA_PATH
EOF

history
sudo fdisk -l
sudo lsblk /dev/sdc
sudo lsblk /dev/sdd
df -h
tail -n 10 /etc/passwd
sudo tee /usr/local/bin/PerezGambaleAltaUser-Groups.sh << 'EOF'
#!/bin/bash
USUARIO_REF=$1
LISTA=$2
CLAVE=$(sudo grep "^$USUARIO_REF:" /etc/shadow | cut -d: -f2)

while IFS=',' read -r USER GROUP HOME_DIR; do
    [[ "$USER" =~ ^#.*$ ]] && continue
    [ -z "$USER" ] && continue

    sudo groupadd -f "$GROUP"
    sudo useradd -m -s /bin/bash -g "$GROUP" -d "$HOME_DIR" -p "$CLAVE" "$USER"
done < "$LISTA"
EOF

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

docker ps
sudo docker ps
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
ls
cd roles
2do_parcial/
2do_parcial ls
ls 2do_parcial
cd 2do_parcial
find . -type f
cat tasks/main.yml
cat vars/main.yml
cat defaults/main.yml
mkdir templates
nano templates/datos_alumno.txt.j2
nano templates/datos_equipo.txt.j2
cat templates/datos_equipo.txt.j2
nano vars/main.yml
cat vars/main.yml
nano tasks/main.yml
cat tasks/main.yml
cd ../..
pwd
ls -la
find . -maxdepth 2 -name "*.yml"
cat playbook.yml
cat ansible.cfg
find inventory -type f
cat inventory/*
roles_path = /tmp:../
ansible-playbook -i inventory/hosts playbook.yml --syntax-check
ansible-playbook -i inventory/hosts playbook.yml --limit produccion
ls -la roles/2do_parcial/templates/
cd roles/2do_parcial
cat > templates/datos_alumno.txt.j2 << 'EOF'
Nombre: Pedro Apellido: PerezGambale
Division: 115
EOF

ls -la templates/
cat templates/datos_alumno.txt.j2
cd ../..
ansible-playbook -i inventory/hosts playbook.yml --limit produccion
nano roles/2do_parcial/tasks/main.yml
cat > roles/2do_parcial/tasks/main.yml << 'EOF'
---

- debug:
    msg: "Tareas del 2do Parcial"

- name: Crear estructura de directorios 2do_parcial
  file:
    path: "{{ item }}"
    state: directory
    mode: '0755'
  loop:
    - /tmp/2do_parcial/alumno
    - /tmp/2do_parcial/equipo

- name: Generar datos del alumno
  template:
    src: datos_alumno.txt.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt
    mode: '0644'

- name: Generar datos del equipo
  template:
    src: datos_equipo.txt.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt
    mode: '0644'

- name: Sudoers sin password para grupo 2PSupervisores
  become: yes
  lineinfile:
    path: /etc/sudoers.d/2psupervisores
    line: '%2PSupervisores ALL=(ALL) NOPASSWD: ALL'
    create: yes
    validate: 'visudo -cf %s'
    mode: '0440'
EOF

ansible-playbook -i inventory/hosts playbook.yml --limit produccion --ask-become-pass
mkdir -p ~/RTA_Examen_$(date +%Y%m%d)
cat > ~/RTA_Examen_$(date +%Y%m%d)/Punto_D.sh << 'EOF'
#!/bin/bash
# Punto D - Ansible
cd ~/UTN-FRA_SO_Examenes/202406/ansible
ansible-playbook -i inventory/hosts playbook.yml --limit produccion --ask-become-pass
EOF

cat ~/RTA_Examen_$(date +%Y%m%d)/Punto_D.sh
ls -la ~/RTA_Examen_$(date +%Y%m%d)/
cd ~
ls -la
find ~ -maxdepth 2 -iname "*UTNFRA_SO_2do_TP*"
git clone https://github.com/pedrogambale/UTNFRA_SO_2do_TP_PerezGambale.git
git clone https://pedrogambale:pedrogambale22@github.com/pedrogambale/UTNFRA_SO_2do_TP_PerezGambale.git
git clone https://github.com/pedrogambale/UTNFRA_SO_2do_TP_PerezGambale.git
cd UTNFRA_SO_2do_TP_PerezGambale
ls -la
cp -r ~/UTN-FRA_SO_Examenes/202406 .
cp -r ~/RTA_Examen_$(date +%Y%m%d) .
history -a
cp ~/.bash_history .bash_history
ls -la
sudo useradd -m -s /bin/bash pedrogambale
sudo passwd pedrogambale
id pedrogambale
cat /etc/passwd | grep pedrogambale
history -a
