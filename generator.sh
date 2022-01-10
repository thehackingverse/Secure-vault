#!/bin/bash
#Copyright© by 2021 thehackingverse
#####################################################
if [ -d /usr/share/lolcat ]
then
if [ -d generator ]; 
then
       cd generator 
else
      mkdir generator ; cd generator ; sudo apt-get install lolcat
fi 
fi
figlet -f slant "mr.generator" | lolcat
echo "[*]: This script is used for genrating encrypted passwords & decrypt the passwords,identifes the hash [*]
[*]: Join our community on discord https://discord.gg/NQgHpCbAmM [*]
[*]: Copyright© by 2021 thehackingverse[*]"
#####################################################
figlet -f slant "starting encrypting.." | lolcat
echo "[*] Enter the password to encrypt [*]"
read pass
figlet -f slant "encryption done" | lolcat
  pass=`echo -n $pass | base64`
echo " $pass"    
echo "[*] Do you want to identify the hash ('y/n') [*]"
read a
if [ $a == y ]
then
hash-identifier
else
figlet -f slant " exiting .. " | lolcat
fi
echo "[*] Do you want to decypt the password ('y/n')[*]"
read b
if [ $b == y ]
then
echo "[*] Enter the password to decrypt [*]"
read decrypt
figlet -f slant "dencryption done" | lolcat
      decrypt=`echo -n $decrypt | base64 --decode` 
echo "$decrypt"
else
    figlet -f slant " thank you " | lolcat
fi
################################################################
