# projeto_cep_api_ruby

Configurando sua máquina
Necessário instalação:
Ruby(2.5.8): linguagem de programação utilizada nos testes.
Cmder ou terminal semelhante: Sistema que trás as funcionalidades bash (Terminal) para o Windows.
DevKit: Kit de ferramentas que o sistema operacional precisa para que o desenvolvimento funcione.
Visual Studio Code ou semelhantes: Editor de texto com funções úteis para escrever o código da automação de testes.

Instalar o bundler
No Console do Cmder, após a instalação do ruby, digite o comando:
gem install bundler

Em seguida:
bundle install

Para executar os cenários existentes, digite o comando:
cucumber

Gemas utilizadas:

Rspec - Responsável pelas assertividades e validações
Cucumber - Responsável pelo BDD
Httparty - Responsável pela manipulação de APIs de forma prática
Rubocop - Responsável por garantir as boas práticas de desenvolvimento Ruby (Para executá-lo, digite no terminal rubocop)

Observações:
Foi criado apenas um arquivo de massa por conta da utilização de endereço da consulta de cep apenas em produção. Caso fosse em ambientes diferentes, é possível configurar um arquivo YAML por ambiente e configurar o ENVIRONMENT_TYPE=qa/dev/prd.

Deixei o arquivo api_commons.rb como global para compartilhar métodos em comum em vários testes aos quais o projeto possa receber. Dentro dele há um método de extrair os campos de um data_table passado no gherkin em forma de hash. Podemos utilizá-lo para criar variação de cenários, assim como | tipo | estado |.
