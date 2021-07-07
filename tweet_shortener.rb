# Write your code here.
require 'pry'

 def dictionary 
  {
"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2', 
"for" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@",
"and" => "&",
"For"=> "4"
}

end
 def word_substituter(tweet)
  dict = dictionary
  words = tweet.split(" ")

  words.collect do |word|
    dictionary.collect do |key, value|
      if word == key 
        word.replace(value)
      end 
    end
  end 
  words.join(" ")
end  
  

def bulk_tweet_shortener(array)
  array.collect do |x|
  puts word_substituter(x)
  #binding.pry
end
end

def selective_tweet_shortener(string)
 
  #binding.pry
  (string.length > 140) ? (word_substituter(string)) : (string)
  
  #binding.pry

end
  
def shortened_tweet_truncator(string)
 # binding.pry
  (string.length > 140) ? string = (word_substituter(string)) : (string)
  (string.length <= 140) ? string : string[0..139]
end

  
  
  
  
  
  
  
  
#binding.pry
