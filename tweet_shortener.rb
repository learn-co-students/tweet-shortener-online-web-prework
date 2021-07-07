require 'pry'

def dictionary 
  {
    "hello" => 'hi', 
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four"=> '4',
    "be" => 'b',
    "you" => 'u',
    "at" => '@',
    "and" => '&'
  }
end


def word_substituter(tweet)
  compare_tweet = tweet.split
  compare_tweet.each_with_index do |word, index|
    if dictionary.keys.include?(word.downcase)
      compare_tweet[index] = dictionary[word.downcase]
    end 
  end 
  compare_tweet.join(" ") 
end 
  
  
def bulk_tweet_shortener(tweets)
    tweets.each {|tweet| puts word_substituter(tweet)}
end 


def selective_tweet_shortener(tweet)
   tweet.length > 140 ? word_substituter(tweet) : tweet
   
#  if tweet.length > 140
#    word_substituter(tweet)
#  else 
#    tweet  
#  end    
end  


def shortened_tweet_truncator(tweet)
  
  if word_substituter(tweet).length > 140 
    word_substituter(tweet).chars[0..136].join("") + "..."   
  else 
    word_substituter(tweet)
  end 
end  
    
    
  