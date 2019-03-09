# Write your code here.

def dictionary
  {"hello" => "hi",
    "to" => "2", "two" => "2", "too" => "2",
    "for" => "4", "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&" }
end

def word_substituter(string)
  words = string.split
  keys = dictionary.keys

  words.each do |word|
    if word == keys
      words << keys
    end
  end
  words.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener
end
end
