sudo fdisk /dev/sdd.
n -> p -> 1 -> Enter -> Enter. t -> 8e. w.
sudo fdisk /dev/sdc.
n -> p -> 1 -> Enter -> Enter. t -> 8e. w.

sudo pvcreate /dev/sdd1 /dev/sdc1
sudo vgcreate vg_datos /dev/sdd1
sudo vgcreate vg_temp /dev/sdc1

sudo lvcreate -L 5M vg_datos -n lv_docker
sudo lvcreate -L 1.5G vg_datos -n lv_workareas
sudo lvcreate -L 512M vg_temp -n lv_swap

sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas

sudo mkswap /dev/mapper/vg_temp-lv_swap

sudo mkdir -p /work/
sudo mount /dev/mapper/vg_datos-lv_workareas /work/

sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo swapon /dev/mapper/vg_temp-lv_swap

sudo fdisk -l
sudo lsblk /dev/sdc
sudo lsblk /dev/sdd
df -h
tail -n 10 /etc/passwd
