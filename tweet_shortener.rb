def dictionary 
  dictionary_hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2", 
    "too" => "2", 
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b", 
    "you" => "u", 
    "at" => "@", 
    "and" => "&"
  }
end 



def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  
  dictionary_keys_array = dictionary.keys 
  
  new_tweet = tweet_array.collect do |x|
    if dictionary_keys_array.include?(x)
      x = dictionary[x]
    else 
      x
    end 
  end 
  new_tweet.join(" ")
end 

word_substituter("I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real.")

def bulk_tweet_shortener(array_of_tweets)

  array_of_tweets.each do |x|
    puts word_substituter(x)
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
  if selective_tweet_shortener(tweet).length > 140
    tweet[0..136] + "..."
  else 
    tweet
  end
end 











