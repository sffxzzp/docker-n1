#!/usr/bin/env bash
rm -rf ./newcerts
rm -rf ./Unblock
rm -f *.cer
rm -f *.pem
rm -f index.txt*
rm -f serial*
touch index.txt
echo '00'>serial
