sudo apt-get update && apt-get install make docker.io docker-compose

mkdir -p /home/aoshimiz/Desktop/data/MariaDB

mkdir -p /home/aoshimiz/Desktop/data/WP

sudo sh -c 'echo "127.0.0.1 aoshimiz.42.fr" >> /etc/hosts'

mkdir -p ~/.ssh
mv ~/inception/id_ed25519_vogsphere.txt ~/.ssh/id_ed25519_vogsphere
mv ~/inception/id_ed25519_vogsphere.pub.txt ~/.ssh/id_ed25519_vogsphere.pub
chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_ed25519_vogsphere
chmod 644 ~/.ssh/id_ed25519_vogsphere.pub
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519_vogsphere