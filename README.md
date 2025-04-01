sudo apt-get update && apt-get install make docker.io docker-compose

mkdir -p /home/aoshimiz/Desktop/data/MariaDB

mkdir -p /home/aoshimiz/Desktop/data/WP

sudo sh -c 'echo "127.0.0.1 aoshimiz.42.fr" >> /etc/hosts'

mkdir -p ~/.ssh

mv ~/inception/id_ed25519_vogsphere.txt ~/.ssh/
id_ed25519_vogsphere

mv ~/inception/id_ed25519_vogsphere.pub.txt ~/.ssh/id_ed25519_vogsphere.pub

chmod 700 ~/.ssh

chmod 600 ~/.ssh/id_ed25519_vogsphere

chmod 644 ~/.ssh/id_ed25519_vogsphere.pub

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_ed25519_vogsphere

https://web.archive.org/web/20240806235651/https://42evals.com/common-core/inception

```sh
mkdir -p ./srcs && cat > ./srcs/.env <<'EOF'
# WordPress DB
DB_NAME=Wordpress
MARIA_DB_USER=aoshimiz
MARIA_DB_USER_PASSWORD=42tokyo
MARIA_DB_ROOT_PASSWORD=42tokyo

# WordPress Admin
WP_ADMIN_USER=aoshimiz
WP_ADMIN_PASSWORD=aoshimiz
WP_ADMIN_EMAIL=aoshimiz@gmail.com

# WordPress User
WP_USER=guestuser
WP_USER_PASSWORD=guestpass42
WP_USER_EMAIL=guestuser@example.com

# Domain and TLS
DOMAIN_NAME=aoshimiz.42.fr
CERTS_PATH=/etc/nginx/ssl/NG.crt
EOF

echo ".env ファイルを ./srcs/.env に生成しました ✅"
