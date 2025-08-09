docker stop nginx

docker run --rm \
  -v ./certbot/conf:/etc/letsencrypt \
  -v ./certbot/www:/var/www/certbot \
  -v ./certbot/log:/var/log/letsencrypt \
  certbot/certbot renew --quiet

docker start nginx