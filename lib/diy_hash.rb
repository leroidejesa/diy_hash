class DiyHash
  define_method(:initialize) do
  #   @key = key
  #   @value = value
    @storage_array = []

  end

  define_method(:store) do |key, value|
    @storage_array.push(key, value)
    @storage_array
  end

  define_method(:fetch) do |key|
    key_position = @storage_array.index(key)
    value_position = key_position+=1
    @storage_array.at(value_position)
  end

end
