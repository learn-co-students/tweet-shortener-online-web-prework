# Write your code here.
require 'pry'
def dictionary
{"hello" => 'hi',
"to"  => '2', 
"two" => '2', 
"too" => '2', 
"for" => '4', 
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@", 
"and" => "&"}
end

def word_substituter(tweet)
  tweet_array = tweet.split  
  tweet_array.map do |word|
  #binding.pry
    if dictionary[word] == word 
       dictionary[word]
    else nil
    end
  end
end

#def bulk_tweet_shortener(tweets_array)
#takes in an array of tweets, 
#iterates over them, shortens them, 
#puts result to the screen
#end