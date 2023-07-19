# Automação ViaCEP
## Testes de backend API REST em Ruby com BDD

Exemplo de projeto utilizando boas práticas através da gem Rubocop.

Neste projeto é validado cada campo do objeto JSON retornado, assim como seus valores, realizando consultas de cada estado do Brasil e apresentado o IBGE no console.

### Rodando via docker sem configuração local
#### Necessário instalação:
- Docker e suas dependências (WSL2)

#### Comandos no terminal:
- No Console do Cmder/iTerm, digite o comando:
    ```sh
    docker build -t ruby-cucumber .
    ```

- Em seguida:
    ```sh
    docker run ruby-cucumber
    ```

### Configurando sua máquina
#### Necessário instalação:
- Ruby _2.5.8_ ou superior
- Cmder, iTerm ou terminal semelhantes
- Visual Studio Code ou semelhantes

### Instalar o bundler e execução dos testes
- No Console do Cmder/iTerm, após a instalação do ruby, digite o comando:
    ```sh
    gem install bundler
    ```


- Em seguida:
  ```sh
  bundle install
  ```
- Para executar os cenários existentes, digite o comando:
  ```sh
  cucumber
  ```
- Caso queira rodar os testes com o log do HTTParty ativado:
  ```sh
  cucumber -p api_log
  ```

### Relatório:
Após o teste, o relatório de execução aparece na pasta _reports_, sendo em HTML ou JSON

### _Gems_ utilizadas:
> Rspec - Responsável pelas assertividades e validações
> Cucumber - Responsável pelo BDD
> Httparty - Responsável pela manipulação de APIs de forma prática
> Rubocop - Responsável por garantir as boas práticas de desenvolvimento Ruby (Para executá-lo, digite no > terminal rubocop)

### Observações:
Foi criado apenas um arquivo de massa por conta da utilização de endereço da consulta de cep apenas em produção. Caso fosse em ambientes diferentes, é possível configurar um arquivo YAML por ambiente e configurar o ENVIRONMENT_TYPE=qa/dev/prd.
