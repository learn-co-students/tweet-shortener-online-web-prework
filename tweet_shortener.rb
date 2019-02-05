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
    
#binding.pry

    if dictionary.keys.include?(word.downcase)
      compare_tweet[index] = dictionary[word.downcase]
    
    end 
  end 
  compare_tweet.join(" ")  
end 
  
  
  
    
    
  