FROM nginx:alpine
RUN apk add --no-cache \
        openssl \
        openssl-dev 
RUN mkdir -p /etc/pki/tls/certs
RUN mkdir -p /etc/pki/tls/private
RUN mkdir -p /etc/pki/tls/CA
RUN mkdir -p /etc/pki/CA && cd /etc/pki/CA && mkdir certs crl newcerts tsaserial private
RUN touch /etc/pki/CA/index.txt && echo 00 > /etc/pki/CA/serial
COPY ./ssl/openssl.conf /etc/ssl/openssl.conf

RUN openssl genrsa 2048 > /etc/pki/tls/CA/CA.key
RUN openssl req -new -config /etc/ssl/openssl.conf -key /etc/pki/tls/CA/CA.key -out /etc/pki/tls/CA/cacert.csr -subj "/C=JP/ST=Tokyo/L=Chiyoda-ku/O=My Company/OU=Development Section/CN=localhost"
RUN openssl x509 -days 3650 -req -signkey /etc/pki/tls/CA/CA.key < /etc/pki/tls/CA/cacert.csr > /etc/pki/tls/CA/cacert.pem

RUN openssl genrsa 2048 > /etc/pki/tls/private/localhost.key
RUN openssl req -new -config /etc/ssl/openssl.conf -key /etc/pki/tls/private/localhost.key -out /etc/pki/tls/private/localhost.csr -subj "/C=JP/ST=Tokyo/L=Chiyoda-ku/O=My Company/OU=Development Section/CN=localhost"
RUN openssl ca -batch -days 3650 -config /etc/ssl/openssl.conf -in /etc/pki/tls/private/localhost.csr -keyfile /etc/pki/tls/CA/CA.key -cert /etc/pki/tls/CA/cacert.pem -out /etc/pki/tls/certs/localhost.crt
