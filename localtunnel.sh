#!/bin/bash

echo "Digite a porta que deseja usar:"
read porta

echo "Criando túnel local com o localtunnel..."

# Inicia o localtunnel com a porta especificada
lt --port $porta &>/dev/null &

# Espera até que a URL seja gerada
while true
do
  url=$(curl -s http://localhost:4040/api/tunnels | jq -r '.tunnels[0].public_url')
  if [ "$url" != "null" ]
  then
    break
  fi
done

echo "Túnel criado com sucesso!"
echo "URL gerada: $url"

echo "Deseja modificar a URL gerada? (S/N)"
read resposta

if [ "$resposta" = "S" ] || [ "$resposta" = "s" ]
then
  echo "Digite a nova URL:"
  read nova_url
  url=$nova_url
fi

echo "Acessando a URL $url"
xdg-open $url
