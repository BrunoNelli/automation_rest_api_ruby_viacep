#language: pt

@consultar_cep
Funcionalidade: Validar a api de consulta de cep
  Para que eu possa realizar a consultas de endereço
  Sendo um usuário do viacep
  Posso receber as informações do endereço a partir do cep

  Esquema do Cenário: Validar o endpoint consultar_cep.get
    Dado ter uma massa configurada do endpoint consulta_cep para o cenário <tipo>
      | estado | <estado> |
    Quando chamar o endpoint de consulta de cep
    Então validar o retorno do endpoint de consulta de cep para o cenário <tipo>

    Exemplos:
      | tipo     | estado              |
      | positivo | acre                |
      | positivo | alagoas             |
      | positivo | amazonas            |
      | positivo | amapa               |
      | positivo | bahia               |
      | positivo | ceara               |
      | positivo | distrito_federal    |
      | positivo | espirito_santo      |
      | positivo | goias               |
      | positivo | maranhao            |
      | positivo | minas_gerais        |
      | positivo | mato_grosso_do_sul  |
      | positivo | mato_grosso         |
      | positivo | para                |
      | positivo | paraiba             |
      | positivo | pernambuco          |
      | positivo | piaui               |
      | positivo | parana              |
      | positivo | rio_de_janeiro      |
      | positivo | rio_grande_do_norte |
      | positivo | rio_grande_do_sul   |
      | positivo | rondonia            |
      | positivo | roraima             |
      | positivo | santa_catarina      |
      | positivo | sergipe             |
      | positivo | sao_paulo           |
      | negativo |                     |
