#!/bin/bash

keybit=2048

for i in {1..10}
do
  openssl genrsa $keybit 2> /dev/null | openssl asn1parse | grep INTEGER | sed -n 5,6p | sed "s/^.*INTEGER.*://"
done

