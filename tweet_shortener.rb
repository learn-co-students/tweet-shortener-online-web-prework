def dictionary
  dictionary = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end

def word_substituter(tweet)
  array_tweet = tweet.split(" ")
  
  array_tweet.each_with_index do |word, index|
    dictionary.each do |key, value|
      if word.downcase == key
    array_tweet[index] = value
 end
 end
 end
  array_tweet.join(" ")
end
  
  def bulk_tweet_shortener (tweets_array)
    tweets_array.collect do |tweet|
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
  if tweet.length <= 140
    tweet
  else 
    word_substituter(tweet)
    tweet[0..136]+ "..."
  end
end