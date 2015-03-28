#!/bin/bash

while read line
do
  echo -n "$line:"
  echo Q | openssl s_client -connect ${line}:443 2> /dev/null | openssl x509 -modulus -noout | sed "s/Modulus=//"
done

