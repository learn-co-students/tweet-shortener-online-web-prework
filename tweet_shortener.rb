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

def word_substituter(tweet_string)
  #split input string into array 
  tweet_array = tweet_string.split
  #iterate through array with_index to be able to target elements
  tweet_array.each_with_index do |word, index|
    #get array of keys from dictionary method
    #& iterate through tweet_array to compare contents
    if dictionary.keys.include?(word.downcase)
      #if match found assign the element at that index 
      #the value from dictionary for that word key
      tweet_array[index] = dictionary[word.downcase]
    end
  end
  tweet_array.join(" ")
end  

def bulk_tweet_shortener(array_tweets)
  #iterate through array of tweets
  array_tweets.each do |tweet|
    #pass each tweet to word substituter 
    #method to be shortened and printed
    puts word_substituter(tweet)
  end
end  

def selective_tweet_shortener(tweet)
  #check if tweet length is 140 chars or more
  if tweet.length > 140
      #if yes pass that tweet to word_substituter method
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length > 140
    tweet = tweet[0..136] + "..."
  else
    tweet
  end
end

