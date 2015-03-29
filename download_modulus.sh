#!/bin/bash

while read line
do
  echo -n "$line:"
  echo Q | openssl s_client -connect ${line}:443 -servername ${line} 2> /dev/null | openssl x509 -modulus -noout | sed "s/Modulus=//"
done

