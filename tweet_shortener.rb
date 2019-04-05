# Write your code here.


 def dictionary
 words_to_be_substituted = { "hello" => "hi", "to" => "2", "two" => "2", "too" =>  "2", "for" => "4","For" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end
 
 def word_substituter(string) 
   tweet = string.split
   tweet.map do |word|
     dictionary.map do |key,value|
       if word == key
         word.replace value
       end
   end
 end
  tweet.join(" ")
 end 

def bulk_tweet_shortener(array)
  array.collect{|phrase| puts word_substituter(phrase)}
end 

def selective_tweet_shortener(tweet)
if tweet.length >140
   word_substituter(tweet)
else
   tweet
end
end

def shortened_tweet_truncator(tweet)
if word_substituter(tweet).length > 140 
  word_substituter(tweet)[1..137] + "..."
else
  tweet
end
end 