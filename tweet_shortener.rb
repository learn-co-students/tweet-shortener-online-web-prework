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
    if dictionary.keys.include?(y.downcase)
    y = dictionary[y.downcase]
    else 
      y  
    end 
   end.join(" ")
end 
  
def bulk_tweet_shortener(tweets)
  tweets.each do |words| puts word_substituter(words) end 
end
  
  #if the tweet is > 140 char then substitute, else leave alone.
  
def selective_tweet_shortener(tweet)
  if tweet.length <=140 
  tweet
  else word_substituter(tweet)
  end 
end 
  
  