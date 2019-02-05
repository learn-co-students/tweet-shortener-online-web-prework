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
  
    compare_tweet.each_with_index do |word, index|
      
      if dictionary.keys.include?(word) == compare_tweet(word.downcase)
        
        compare_tweet[index].replace(word.downcase)
        
  binding.pry

        
        
      end 
      
    end 
    
end 
  
  
  
    
    
  