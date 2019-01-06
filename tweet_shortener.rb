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
  tweet_array = []
  tweet_one.each do |tweet| tweet_array << tweet.split(" ") end 
  #would tweet.split("").map create a new array named tweet which could #then be operated on on the next line?
  tweet_array.each do 
  if tweet_array.include?(dictionary.keys) 
    tweet_array.each |word| word.replace dictionary.value end 
    
  # if dictionary.keys.include?(tweet_array)
  #   tweet_array.each |word| word.replace(dictionary.value) end 

  
    