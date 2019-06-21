#!/usr/bin/env bash

mkdir newcerts
mkdir Unblock
cd ..
openssl genrsa -out ./CA/cakey.pem 2048
openssl req -new -x509 -key ./CA/cakey.pem -out ./CA/cacert.pem -days 36500 -config ./root.cfg -subj "/C=CN/ST=Nowhere/L=Nowhere/O=Unblock The Internet/OU=Unblock The Internet/CN=Unblock The Internet Self Signed CA"
openssl x509 -inform PEM -in ./CA/cacert.pem -outform DER -out ./CA/ca.cer
openssl genrsa -out ./CA/Unblock/unblock.key 2048
openssl req -new -key ./CA/Unblock/unblock.key -out ./CA/Unblock/unblock.csr -config ./server.cfg -subj "/C=CN/ST=Nowhere/L=Nowhere/O=Unblock The Internet/OU=Unblock The Internet/CN=Unblock The Internet Self Signed CA"

expect << EOF  
spawn openssl ca -in ./CA/Unblock/unblock.csr -out ./CA/Unblock/unblock.crt -days 36500 -extensions x509_ext -extfile ./server.cfg  -config ./openssl.cfg
expect "*Sign the certificate?*"  
send "y\n"
expect "*certified, commit*"  
send "y\n"
expect eof;
EOF

#openssl ca -in ./CA/Unblock/unblock.csr -out ./CA/Unblock/unblock.crt -days 36500 -extensions x509_ext -extfile ./server.cfg  -config ./openssl.cfg

cp ./CA/cacert.pem ./CA/Unblock/cacert.pem
cp ./CA/ca.cer ./CA/Unblock/ca.cer