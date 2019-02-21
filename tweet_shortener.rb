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
  
def selective_tweet_shortener(tweet_one)
  
  if  tweet_one.length > 140 
     
     return bulk_tweet_shortener(tweets)
   else 
      tweet_one. length > 130 
      return  tweet_one
    
  end
  
end
