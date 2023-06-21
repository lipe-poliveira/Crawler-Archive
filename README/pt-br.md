Crawler.sh
Crawler.sh é um script em shell que permite a extração e filtragem de URLs a partir de um arquivo ou de uma URL específica. Ele fornece várias opções para filtrar URLs com base em extensões e padrões específicos, permitindo coletar informações específicas das URLs encontradas.

Uso
$ ./crawler.sh [-l domínio] [-u url] [-js] [-json] [-html] [-php] [-base64] [-redirect]

Argumentos
-l domínio: Define o domínio para realizar a busca de URLs. O script lê um arquivo com subdomínios para o domínio especificado.
-u url: Especifica uma URL específica para realizar a extração e filtragem.
Opções Adicionais
-js: Filtra e salva URLs que terminam com a extensão .js.
-json: Filtra e salva URLs que terminam com a extensão .json.
-html: Filtra e salva URLs que terminam com a extensão .html.
-php: Filtra e salva URLs que terminam com a extensão .php.
-base64: Filtra e salva URLs que contêm a sequência ==.
-redirect: Filtra e salva URLs que contêm a palavra "redirect".
Funcionalidade
O script verifica os argumentos fornecidos para garantir sua corretude e completude. Se os argumentos forem inválidos, exibe uma mensagem de uso apropriada e encerra a execução.

Se a opção -l for utilizada, o script lê um arquivo contendo subdomínios para o domínio especificado. Se a opção -u for utilizada, o script realiza a extração e filtragem na URL específica fornecida.

O script constrói uma URL de requisição para cada URL utilizando o serviço web.archive.org. Em seguida, utiliza o comando curl para realizar a requisição e salva a resposta em um arquivo chamado resultados.txt. Após o download de cada URL, uma mensagem de conclusão é exibida.

O script realiza a sanitização dos dados aplicando filtragens adicionais com base nas opções selecionadas. Ele filtra as URLs com base em extensões e padrões específicos, salvando as URLs filtradas em arquivos separados. As opções disponíveis incluem -js, -json, -html, -php, -base64 e -redirect. Se uma opção inválida for fornecida, o script exibe uma mensagem de erro e encerra a execução.

Ao finalizar o processo, o script exibe uma mensagem indicando o término.
