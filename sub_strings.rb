def substrings(str, dictionary)
  dictionary.reduce(Hash.new) do |hash, word|
    hash[word] = str.downcase.scan(word).length unless str.downcase.scan(word).length == 0
    hash
  end
end
