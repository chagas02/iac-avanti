#!/bin/bash

echo "Criando diretórios"

sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

echo "Criando Grupos"

sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

echo "Criando Usuários" 

sudo useradd carlos -c "Carlos Alberto" -s /bin/bash -p $(openssl passwd Mudar123) -G GRP_ADM
sudo passwd -e carlos
sudo useradd maria -c "Maria Bonita" -s /bin/bash -p $(openssl passwd Mudar123) -G GRP_ADM
sudo passwd -e maria
sudo useradd joao -c "João Roberto" -s /bin/bash -p $(openssl passwd Mudar123)  -G GRP_ADM
sudo passwd -e joao

sudo useradd debora -c "Debora Flor" -s /bin/bash -p $(openssl passwd Mudar123) -G GRP_VEN
sudo passwd -e debora
sudo useradd sebastiana -c "Sebastiana da Silva" -s /bin/bash -p $(openssl passwd Mudar123) -G GRP_VEN
sudo passwd -e sebastiana
sudo useradd roberto -c "Roberto Carlos" -s /bin/bash -p $(openssl passwd Mudar123) -G GRP_VEN
sudo passwd -e roberto

sudo useradd josefina -c "Josefina Ribeiro" -s /bin/bash -p $(openssl passwd Mudar123) -G GRP_SEC
sudo passwd -e josefina
sudo useradd amanda -c "Amanda Alves" -s /bin/bash -p $(openssl passwd Mudar123)  -G GRP_SEC
sudo passwd -e amanda
sudo useradd rogerio -c "Rogério Coelho" -s /bin/bash -p $(openssl passwd Mudar123)  -G GRP_SEC
sudo passwd -e rogerio

echo "Permissão negada para outros usuários"
	
sudo chmod 777 publico
sudo chmod 770 adm
sudo chmod 770 ven
sudo chmod 770 sec

echo "Mudando grupo do dono"

sudo chown root:GRP_ADM /adm
sudo chown root:GRP_SEC /sec
sudo chown root:GRP_VEN /ven

echo "fim do script"