require 'rspec'
require 'httparty'
require 'pry'
require 'yaml'

require_relative '../services/viacep_service'
require_relative '../support/api_commons'

MASSA = YAML.load_file("#{File.dirname(__FILE__)}/config/default_data.yaml")

ParameterType(
  name: 'tipo',
  regexp: /positivo|negativo|validacao/,
  transformer: ->(type) { type }
)
