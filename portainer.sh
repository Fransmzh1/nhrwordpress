docker run -d -p 9443:9443 -p 8000:8000 \
    --name portainer --restart always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data \
    -v /etc/letsencrypt/live/satudata-svr.dicheck.online:/certs/live/satudata-svr.dicheck.online:ro \
    -v /etc/letsencrypt/archive/satudata-svr.dicheck.online:/certs/archive/satudata-svr.dicheck.online:ro \
    portainer/portainer-ce:latest \
    --sslcert /certs/live/satudata-svr.dicheck.online/fullchain.pem \
    --sslkey /certs/live/satudata-svr.dicheck.online/privkey.pem

