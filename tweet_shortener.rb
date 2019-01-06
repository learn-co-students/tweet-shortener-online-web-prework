require "pry"

  #create a hash, where long are keys and new words are values.

def dictionary
  dictionary = {
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
  
def word_substituter(tweet_one)
  dictionary
  tweet_one.split(" ").map do |y|
    if dictionary.keys.include?(y)
    y = dictionary[y]
    else 
      y  
    end 
   end.join(" ")
end 
  
def bulk_tweet_shortener(tweets)
  puts word_substituter(tweets)
end
  
  
  