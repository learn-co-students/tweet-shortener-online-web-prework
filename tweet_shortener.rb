# Write your code here.
require 'pry'
def dictionary
{"hello" => 'hi',
"to"  => '2', 
"two" => '2', 
"too" => '2', 
"for" => '4', 
"For" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@", 
"and" => "&"}
end

def word_substituter(tweet)
  tweet_array = tweet.split  
  tweet_array.map do |word|
    if dictionary[word] 
       dictionary[word]
    else 
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets_array)
  tweets_array.map do |word|
    puts word_substituter(word)
  end
end 
#takes in an array of tweets, 
#iterates over them, shortens them, 
#puts result to the screen

def selective_tweet_shortener(tweet)
  if tweet.length > 140 
    word_substituter(tweet)
    #"..."
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
   better_tweets =  selective_tweet_shortener(tweet)
  if selective_tweet_shortener(tweet).length > 140
    selective_tweet_shortener(tweet)[0...137] + "..."
      #binding.pry
  else 
    tweet
  end
end