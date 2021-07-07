require 'pry'

def dictionary(item)
 tweets = {"hello" => "hi",
 "to" => "2",
 "two" => "2", 
 "too" => "2", 
 "for" => "4",
 "For" => "4",
 "four" => "4", 
 "be" => "b",
 "you" => "u",
 "at" => "@",
 "and" => "&"}
 
 tweets.each do |k,v|
    if (k==item)
      return v
    end  
 end
 item
end 

 

def word_substituter(string)
   array = string.split(" ")
   array2 = []
   array.each do |item|
     word = dictionary(item)
     item = word
     array2.push(item)
    end
    array2.join(" ")
end
   




def bulk_tweet_shortener(array)
  
  array.each do |item|
    word = word_substituter(item)
    puts word
  end
  
end 



def selective_tweet_shortener(string)
   word = word_substituter(string)
   if string.length > 140
     return word[0..140]
   end
   string
end 



def shortened_tweet_truncator(string)
  word = word_substituter(string)
  if word.length > 140
    return word[0...140]
  end
  word
end 



# Write your code here.

