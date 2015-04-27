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
    if @storage_array.include?(key)
      value_position = key_position+=1
      @storage_array.at(value_position)
    else
      "There is no value for this key"
    end
  end

  define_method(:has_key?) do |value|
    if @storage_array.include?(value)
      "yes"
    else
      "no"
    end
  end
end
