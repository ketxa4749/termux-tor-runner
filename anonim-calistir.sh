#!/bin/bash

# Bu script, verilen komutu Tor ağı üzerinden çalıştırır.
# Kullanım: ./anonim-calistir.sh <komut>
# Örnek: ./anonim-calistir.sh curl ifconfig.me

if [ -z "$1" ]; then
  echo "Lütfen çalıştırmak için bir komut belirtin."
  echo "Örnek: $0 curl ifconfig.me"
  exit 1
fi

echo "Komutunuz '$*' Tor ağı üzerinden çalıştırılıyor..."
torsocks "$@"
