@echo off
rd /s /q newcerts
rd /s /q Unblock
del *.cer
del *.pem
del index.txt*
del serial*
echo off>index.txt
echo 00>serial
pause