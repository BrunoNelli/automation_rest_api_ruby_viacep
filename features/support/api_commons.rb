module ApiCommons
  def create_data_table(data_table)
    data_table_hash = {}
    data_table&.rows_hash&.each { |value| data_table_hash[value.first] = (/(^$)|(^<.*>$)|( )/ =~ value.last).nil? ? value.last : nil }
    data_table_hash
  end
end
