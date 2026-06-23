sudo mkdir -p /work/
sudo mount /dev/mapper/vg_datos-lv_workareas /work/

sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo swapon /dev/mapper/vg_temp-lv_swap

sudo fdisk -l
sudo lsblk /dev/sdc
sudo lsblk /dev/sdd
df -h
tail -n 10 /etc/passwd
