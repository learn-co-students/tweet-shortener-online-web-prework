# Write your code here.
require 'pry'
def dictionary
{"hello" => 'hi',
"to, two, too" => '2', 
"for, four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@", 
"and" => "&"}
end

def word_substituter(tweet)
  binding.pry
  tweet_array = tweet.split  
  tweet_array.map do |word|
    if dictionary[word] == word 
    dictionary[word]
    else
    
    end.to_s
  
end

#def bulk_tweet_shortener(tweets_array)
#takes in an array of tweets, 
#iterates over them, shortens them, 
#puts result to the screen
#end