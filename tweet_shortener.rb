require 'pry'
def word_substituter(tweet)
  word_convert_hash = {
    ["hello"] => "hi",
    ["to" , "two", "too"] => "2",
    ["For", "for", "four"] => "4",
    ["be"] => "b",
    ["you"] => "u",
    ["at"]=> "@",
    ["and"] => "&"
  }
tweet_array = tweet.split(" ")
  
  word_convert_hash.each do |key, value|
    tweet_array.collect! do |word|
      if key.include?(word)
        word = value 
        word
      else word
      end
    end 
  end
  blobly = tweet_array.join(" ")
      blobly
end
#===============================
def bulk_tweet_shortener(tweets)
  tweets.each do |twilt|
    puts word_substituter(twilt)
  end
  
end
#===============================
def selective_tweet_shortener(tweet)
  if tweet.length > 140
    beebee =  word_substituter(tweet)
    beebee
  else tweet
  end
end
#===============================
def shortened_tweet_truncator(tweet)
  vari = selective_tweet_shortener(tweet).length
  if vari > 140
    bleeple = selective_tweet_shortener(tweet)[0..136]
    truncated_tweet = bleeple += "..."
    truncated_tweet
  else bloople = selective_tweet_shortener(tweet)
    bloople
  end
end