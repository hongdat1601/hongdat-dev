docker stop nginx

docker run --rm -p 80:80 \
  -v ./certbot/conf:/etc/letsencrypt \
  -v ./certbot/www:/var/www/certbot \
  certbot/certbot certonly --standalone \
  --preferred-challenges http \
  --agree-tos \
  --email hongdat.dev@gmail.com \
  -d grafana.hongdat.io.vn

  docker start nginx