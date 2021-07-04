# Write your code here.

def dictionary 
  
  shortened_words = {
    
    "hello" => "hi",
     "to" => "2", 
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
    
  }
  
end 

def word_substituter (tweets)
  
  #iterate over every word in tweet
  tweets.split.collect do |word|
    #compare it to hash keys  
    if dictionary.keys.include?(word.downcase)
      #convert tweet into shortened array 
      word = dictionary[word.downcase]
    else 
      word 
    end 
  #convert it back to string
  end.join(" ")
end 

def bulk_tweet_shortener (tweets)
  
  #iterates over them, shortens them, and puts out the results to the screen
  
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end 
end 

def selective_tweet_shortener(tweets)
  #substitutions if the tweet is longer than 140 characters
  if tweets.length > 140 
    word_substituter(tweets)
  #140 characters or shorter, just return the original tweet
  else
    tweets 
  end 
  
end 

def shortened_tweet_truncator(tweets)
  
   #truncates the tweet to 140 characters with an ellipsis (...)  if it's still too long after substitution
   if word_substituter(tweets).length > 140 
     word_substituter(tweets)[0..136] + '...'
   #140 characters or shorter, just return the original tweet 
   else 
     tweets 
   end 
   
  
end 