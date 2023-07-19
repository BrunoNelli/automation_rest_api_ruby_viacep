# Módulo responsável por métodos comuns para as APIs
module ApiCommons
  # Classe responsável por métodos comuns sobre BDD
  class BDD
    def create_data_table(data_table)
      data_table_hash = {}
      data_table&.rows_hash&.each do |value|
        data_table_hash[value.first] = (/(^$)|(^<.*>$)|( )/ =~ value.last).nil? ? value.last : nil
      end
      data_table_hash
    end
  end
end
