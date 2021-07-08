# Write your code here.
def dictionary(str)
  code = {
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
  
  if code.has_key?(str)
    return code[str]
  elsif code.has_key?(str.downcase)
    return code[str.downcase].capitalize
  else
    return str
  end 
end 

def word_substituter(tweet)
  newTweet= tweet.split(" ")
  
  newTweet.collect! do |ele|
    ele = dictionary(ele)
  end 
    
    return newTweet.join(" ")
end 

def bulk_tweet_shortener(tweetArray)
  tweetArray.each do |ele|
    puts word_substituter(ele)
  end 
end 

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  end 
  
  return tweet
end 

def shortened_tweet_truncator(tweet)
  
  newTweet = word_substituter(tweet)
  
  if newTweet.length > 140
    return "#{newTweet[0..136]}..." 
  end 
  
  return newTweet
end 