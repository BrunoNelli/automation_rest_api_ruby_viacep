# syntax=docker/dockerfile:experimental

FROM ruby:3.0.6-alpine3.16

# Instalar dependências de compilação adicionais necessárias para a gem 'json'
RUN apk update && apk add --no-cache build-base

# Configurar diretório de trabalho no contêiner
WORKDIR /app

# Instalar as dependências necessárias para o projeto de automação
COPY Gemfile Gemfile.lock ./

# Instalar o Bundler
RUN gem install bundler

# Instalar as gems do projeto
RUN bundle install

# Criar diretório para os relatórios
RUN mkdir -p reports

# Copiar todo o projeto para o diretório de trabalho no contêiner
COPY . .

# Definir o comando padrão a ser executado ao iniciar o contêiner
ENTRYPOINT ["cucumber"]
