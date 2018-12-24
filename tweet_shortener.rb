def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  #split the string into array
  #iterate through the array string to compare to the dictionary array
  #use dictionary.keys to compare the keys to the array string
  string_array = string.split(" ")
  string_array.each do |word|
    dictionary.keys.each do |key|
      if word.downcase == key
        string_index = string_array.index(word)
        string_array[string_index] = dictionary[key]
      end
    end
  end
  string_array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |string|
    puts word_substituter(string)
  end
end

def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else
    string
  end
end

def shortened_tweet_truncator(string)
  if word_substituter(string).length > 140
    string[0..136] + "..."
  else
    word_substituter(string)
  end
end
