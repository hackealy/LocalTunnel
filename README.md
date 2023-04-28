- Explicando o funcionamento do script:

- O script começa pedindo ao usuário para inserir a porta que deseja utilizar para o servidor local.

- Em seguida, o localtunnel é iniciado com a porta especificada pelo usuário.

- O script fica em um loop, checando periodicamente se a URL gerada pelo localtunnel está disponível. Isso é feito através de uma requisição à API do localtunnel.

- Quando a URL é gerada, o loop é encerrado e a URL é exibida para o usuário.

- Em seguida, o usuário tem a opção de modificar a URL gerada, digitando uma nova URL.

- Por fim, a URL é aberta no navegador padrão do sistema, para que o usuário possa acessar o servidor local remotamente.

# chmod +x localtunnel.sh. 

- Em seguida, basta executá-lo com o comando ./localtunnel.sh. 


- É necessário ter o localtunnel instalado no sistema para que o script funcione corretamente:

- Abra o terminal e atualize o gerenciador de pacotes com o seguinte comando:

# sudo apt-get update

- Em seguida, instale o Node.js e o gerenciador de pacotes npm com o seguinte comando:

# sudo apt-get install nodejs npm

- Verifique se a instalação foi concluída com sucesso digitando os seguintes comandos:

# node -v
# npm -v

Esses comandos exibirão a versão do Node.js e do npm instalados em seu sistema.

- Por Fim:

# npm install -g localtunnel
