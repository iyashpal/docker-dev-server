# Docker Development Server


## Openssl command to generate the ssl certificate

`openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Developer/CN=<domain-name>" -addext "subjectAltName=DNS:<domain-name>" -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx-selfsigned.key -out /etc/nginx/ssl/certs/nginx-selfsigned.crt`
