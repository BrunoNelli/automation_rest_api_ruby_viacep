# Classe responsável por fazer a requisição na API ViaCep
class Viacep
  include HTTParty
  base_uri 'https://viacep.com.br/ws'
  format :json
  headers 'Content-Type': 'application/json'
end
