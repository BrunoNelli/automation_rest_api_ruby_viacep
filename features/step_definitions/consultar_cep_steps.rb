Dado('ter uma massa configurada do endpoint consulta_cep para o cenário {tipo}') do |tipo, dados|
  @data_table = create_data_table(dados)
  @cep = tipo.eql?('positivo') ? MASSA[@data_table['estado']]['cep'] : rand(100_000)
end

Quando('chamar o endpoint de consulta de cep') do
  @retorno_api_cep = Viacep.get("/#{@cep}/json/")
end

Entao('validar o retorno do endpoint de consulta de cep para o cenário {tipo}') do |tipo|
  if tipo.eql?('positivo')
    expect(@retorno_api_cep.code).to eql(200)
    expect(@retorno_api_cep['cep']).to eql(@cep)
    expect(@retorno_api_cep['logradouro']).to eql(MASSA[@data_table['estado']]['logradouro'])
    expect(@retorno_api_cep['complemento']).to eql(MASSA[@data_table['estado']]['complemento'])
    expect(@retorno_api_cep['bairro']).to eql(MASSA[@data_table['estado']]['bairro'])
    expect(@retorno_api_cep['localidade']).to eql(MASSA[@data_table['estado']]['localidade'])
    expect(@retorno_api_cep['uf']).to eql(MASSA[@data_table['estado']]['uf'])
    expect(@retorno_api_cep['ibge']).to eql(MASSA[@data_table['estado']]['ibge'])
    expect(@retorno_api_cep['gia']).to eql(MASSA[@data_table['estado']]['gia'])
    expect(@retorno_api_cep['ddd']).to eql(MASSA[@data_table['estado']]['ddd'])
    expect(@retorno_api_cep['siafi']).to eql(MASSA[@data_table['estado']]['siafi'])
    log("IBGE: #{@retorno_api_cep['ibge']}")
  else
    expect(@retorno_api_cep.code).to eql(400)
  end
end
