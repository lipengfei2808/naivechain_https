openssl genrsa -out server.key 1024

openssl req -new -key server.key -out certrequest.csr

openssl x509 -req -in certrequest.csr -signkey server.key -out server.crt
