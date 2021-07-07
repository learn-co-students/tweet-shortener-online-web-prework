def dictionary
  dictionary = {
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
  
def word_substituter(tweet)
  tweet_array = []
  tweet.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
      tweet_array << word 
    else
      tweet_array << word 
    end 
  end
  tweet_array.join(" ")
end 

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end 
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end 
end 

def shortened_tweet_truncator(tweet)
  shortened_tweet = selective_tweet_shortener(tweet)
  if shortened_tweet.length > 140
    truncated_tweet = "#{shortened_tweet[0..135]} ..."
  else
    shortened_tweet
  end
end 
    
    
    
    
    
