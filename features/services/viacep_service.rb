# Classe responsável por fazer a requisição na API ViaCep
class Viacep
  include HTTParty
  base_uri 'https://viacep.com.br/ws'
  format :json
  debug_output $stdout if ENV['HTTP_LOG'] # Adiciona log do HTTParty caso a execução seja cucumber -p api_log
  headers 'Content-Type': 'application/json'
end
