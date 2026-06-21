def substrings(str, dictionary)
  dictionary.reduce(Hash.new) do |hash, word|
    hits = str.downcase.scan(word).length
    hash[word] = hits unless hits == 0
    hash
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
