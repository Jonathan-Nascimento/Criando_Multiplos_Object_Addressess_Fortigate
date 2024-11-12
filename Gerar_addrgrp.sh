#!/bin/bash
input="Endereco_FQDN.csv"
group_name="meu_grupo_fqdn"
members=""

# Constrói a lista de membros em uma única linha, lendo apenas o nome do endereço
while IFS=',' read -r name _
do
  members+=" \"$name\""
done < "$input"

# Configura o grupo de endereços com todos os membros na mesma linha
echo "config firewall addrgrp"
echo "edit \"$group_name\""
echo "set member$members"
echo "next"
echo "end"
