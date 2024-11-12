#!/bin/bash
input="Endereco_FQDN.csv"

echo "config firewall address"
while IFS=',' read -r name fqdn
do
  printf "edit \"%s\"\n" "$name"
  printf "set type fqdn\n"
  printf "set fqdn \"%s\"\n" "$fqdn"
  printf "set color 10\n"
  printf "next\n"
done < "$input"
echo "end"
