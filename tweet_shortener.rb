require "pry" 
def word_substituter(tweet)
 dictionary = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
  
  
   tweet.split.collect do |word|
    if  dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else 
        word 
        
    end  
   end.join(" ")
  
end

def bulk_tweet_shortener(tweets)
  
  tweets.map do |tweet|
  puts word_substituter(tweet)
  end 
end
  
def selective_tweet_shortener(tweet)
  
  if  tweet.length > 140 
     
     return bulk_tweet_shortener(tweets)
   else 
      tweet.length > 130 
        tweet
    
  end
  
end  
def shortened_tweet_truncator(tweet)
  truncated_tweet = ""
  
   if  word_substituter(tweet).length > 140
     
       truncated_tweet << word_substituter(tweet)[0..136] + "..."
     
      word_substituter(tweet)
     
    else 
      truncated_tweet << word_substituter(tweet)
     
     
  end
  truncated_tweet
end
