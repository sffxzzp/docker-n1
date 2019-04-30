@echo off
md newcerts
md Unblock
cd ..
openssl genrsa -out ./CA/cakey.pem 2048
openssl req -new -x509 -key ./CA/cakey.pem -out ./CA/cacert.pem -days 36500 -config ./root.cfg
openssl x509 -inform PEM -in ./CA/cacert.pem -outform DER -out ./CA/ca.cer
openssl genrsa -out ./CA/Unblock/unblock.key 2048
openssl req -new -key ./CA/Unblock/unblock.key -out ./CA/Unblock/unblock.csr -config ./server.cfg
openssl ca -in ./CA/Unblock/unblock.csr -out ./CA/Unblock/unblock.crt -days 36500 -extensions x509_ext -extfile ./server.cfg  -config ./openssl.cfg
copy ./CA/cacert.pem ./CA/Unblock/cacert.pem
copy ./CA/ca.cer ./CA/Unblock/ca.cer
pause