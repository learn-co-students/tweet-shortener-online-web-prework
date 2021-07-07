def word_substituter(string) 
words = dictionary
tweet = string.split(" ")
 tweet.map do |word|
   words.each do |key, value|
     if word == key
      word.replace(key)
    end
  end
end
tweet.join(" ")
    
#binding.pry
end


 def word_substituter(tweet)
  dict = dictionary
  words = tweet.split(" ")

  words.collect do |word|
    dictionary.collect do |key, value|
      if word == key 
        word.replace(value)
      end 
    end
  end 
  words.join(" ")
end  
  
 