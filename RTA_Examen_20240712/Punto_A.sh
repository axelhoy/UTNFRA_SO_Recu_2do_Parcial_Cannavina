sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo fdisk /dev/sde
sudo wipefs -a /dev/sdc1
sudo wipefs -a /dev/sdc2
sudo wipefs -a /dev/sdc3
sudo wipefs -a /dev/sdd1
pvcreate /dev/sdc1 /dev/sdc2 /dev/sdc3 /dev/sdd1
vgcreate vg_datos /dev/sdc1 /dev/sdc2
vgcreate vg_temp /dev/sdc3 /dev/sdd1
lvcreate -l +100%FREE vg_temp -n lv_swap
lvcreate -L +1.5G vg_datos -n lv_multimedia
lvcreate -l +100%FREE vg_datos -n lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_multimedia
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo mkswap /dev/sde1
sudo swapon /dev/mapper/vg_temp-lv_swap
sudo swapon /dev/sde1
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo systemctl restart docker
cd ..
cd ..
sudo mkdir Multimedia
cd /home/axelc
cd /home/axelc/
sudo mount /dev/mapper/vg_datos-lv_multimedia /Multimedia/
