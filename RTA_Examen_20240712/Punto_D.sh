cd
cd .ssh/
cd UTN-FRA_SO_Examenes/
ssh-keygen
cat /home/axelc/.ssh//id_rsa.pub
cd 202407_Recu/ansible/roles/2PRecuperatorio/
mkdir template
rmdir template
mkdir templates
cd templates
sudo vim datos_alumno.j2
cd ..
cd vars/
sudo vim main.yml
cd ..
cd tasks/
sudo vim main.yml
cd ..
ansible-galaxy role init Instala-tools_cannavina
cd Instala-tools_cannavina/tasks/
sudo vim main.yml
cd
cd .ssh/
cat id_rsa.pub >> authorized_keys
cd
cd UTN-FRA_SO_Examenes/202407_Recu/ansible/
sudo vim playbook.yml
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
