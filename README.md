# Rails sem Zika!

Projeto que visa estimular programadores e designers à desenvolverem um projeto real, utilizando framework Ruby on Rails.
A ideia é criar uma espécie de "mapa da dengue", onde devem ser cadastrados focos do mosquito, áreas de maior índice da doença, bem como denunciar possíveis focos.


## Instalação

### Requisitos

- Ruby;
- PostgreSQL;

### 1 - Fork

Crie um fork do projeto e clone o **seu repositório** localmente, caso tenha dúvidas em como prosseguir você pode seguir os passos [deste tutorial](http://blog.da2k.com.br/2015/02/04/git-e-github-do-clone-ao-pull-request).

### 2 - Instalação de dependências

Após clonar o repositório localmente, entre no diretório criado e execute o seguinte comando para instalar as dependências do projeto:

```console
bundle install
```

### 3 - Configuração de variáveis de ambiente

Copie o arquivo `.env.example` para um chamado `.env` e configure as variáveis de ambiente necessárias:

```console
cp .env.example .env
```

### 4 - Configuração do banco de dados

Crie uma cópia do arquivo `config/database.yml.example` com o nome de `config/database.yml` e configure de acordo com o seu banco de dados (username, password, etc.):

```console
cp config/database.yml.example config/database.yml
```

Agora você poderá executar o comando abaixo que criará o banco de dados localmente, bem como as tabelas e dados previamente definidos para desenvolvimento:

```console
rake db:setup
```

## Execução

Para criar um servidor local com a aplicação você deve executar o seguinte comando:

```console
rails s
```

Se tudo estiver OK, você poderá acessar a aplicação através da url [http://localhost:3000](http://localhost:3000).

## Dúvidas

Mais detalhes de instalação do Ruby na [wiki do projeto](https://github.com/pnaponoceno/learning-ruby/wiki)

Você pode participar independente do seu grau de conhecimento na linguagem, estamos aqui juntos para desenvolver e contribuir com o conhecimento de todos e, posteriormente, com a comunidade em geral.
