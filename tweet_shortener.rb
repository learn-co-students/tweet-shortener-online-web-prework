require "pry"
# Write your code here.
def dictionary 
  my_hash = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for"=> "4", "four"=> "4", "be" => "b","you" => "u", "at" => "@", "and" => "&"} 
end 

def word_substituter(tweet)
  tweet_array = tweet.split
  dictionary_array = dictionary 
  long_words = dictionary_array.keys
  tweet_array.collect! do |word|
    if long_words.include?(word.downcase)
      word = dictionary_array[word.downcase]      
    else 
      word = word 
    end 
  
  end 
 
  tweet_array.join(" ")
end 

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end 
end 

def selective_tweet_shortener(tweet)
  if tweet.length > 140 
    word_substituter(tweet)
  else
    tweet
  end 
end 

def shortened_tweet_truncator(tweet)
  tweet[0...140]
end 