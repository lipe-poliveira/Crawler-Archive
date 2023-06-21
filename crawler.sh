#!/bin/bash

# Verifica os argumentos
if [ $# -lt 2 ]; then
  echo "Uso: $0 -l domain [-js] [-json] [-html] [-php] [-base64] [-redirect]"
  exit 1
fi

# Verifica a opção selecionada
if [ "$1" != "-l" ]; then
  echo "Opção inválida: $1"
  echo "Uso: $0 -l domain [-js] [-json] [-html] [-php] [-base64] [-redirect]"
  exit 1
fi

# Verifica se o arquivo de URLs existe
if [ ! -f "$2" ]; then
  echo "Arquivo de URLs não encontrado: $2"
  exit 1
fi

# Lê o arquivo de URLs linha por linha
while IFS= read -r url; do
  # Constrói a URL de requisição com base na URL fornecida
  request_url="https://web.archive.org/cdx/search/cdx?url=*.${url}/*&output=text&fl=original&collapse=urlkey"

  # Executa o comando curl e salva a resposta em um arquivo
  curl "$request_url" >> resultados.txt

  # Imprime uma mensagem indicando que o download foi concluído
  echo "Download concluído para: $url"
done < "$2"

# Sanitiza os dados ...

# URLs com http://
grep '^http://' resultados.txt > http_urls.txt

# URLs com https://
grep '^https://' resultados.txt > https_urls.txt

# Verifica os argumentos adicionais e filtra as URLs correspondentes

while (( $# > 2 )); do
  case "$2" in
    -js)
      # URLs que terminam com .js
      grep '\.js$' resultados.txt > js_urls.txt
      ;;
    -json)
      # URLs que terminam com .json
      grep '\.json$' resultados.txt > json_urls.txt
      ;;
    -html)
      # URLs que terminam com .html
      grep '\.html$' resultados.txt > html_urls.txt
      ;;
    -php)
      # URLs que terminam com .php
      grep '\.php$' resultados.txt > php_urls.txt
      ;;
    -base64)
      # URLs que contêm ==
      grep '==' resultados.txt > base64_urls.txt
      ;;
    -redirect)
      # URLs que contêm a palavra redirect
      grep 'redirect' resultados.txt > redirect_urls.txt
      ;;
    *)
      echo "Opção inválida: $2"
      echo "Uso: $0 -l domain [-js] [-json] [-html] [-php] [-base64] [-redirect]"
      exit 1
      ;;
  esac
  shift
done

# Imprime uma mensagem indicando a conclusão do processo