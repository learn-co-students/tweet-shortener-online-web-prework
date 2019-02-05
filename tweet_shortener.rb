require 'pry'

def dictionary 
  short_word_list = {
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
  
    compare_tweet.each do |word|
      
      if dictionary.keys.include?(word) == compare_tweet(word.downcase) 
        
  binding.pry

        
        
      end 
      
    end 
    
end 
  
  
  
    
    
  