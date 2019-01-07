# Write your code here.
def dictionary
  substitute_words = {
    :hello => "hi",
    :to => "2",
    :two => "2",
    :too => "2",
    :for => "4",
    :four => "4",
    :be => "b",
    :you => "u",
    :at => "@",
    :and => "&"
  }
end

def word_substituter(tweet_string)
  tweet_array = tweet_string.split
  dictionary_hash = dictionary
  dictionary_hash.each do |k, v|
    tweet_array.each do |word|
      if word.downcase == k.to_s
        word.replace(v.to_s)
      end
    end
  end
  tweet_array.join(sep=" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |array|
    puts word_substituter(array)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    #puts word_substituter(tweet)
    return word_substituter(tweet)
  else
    #puts tweet
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  new_tweet = selective_tweet_shortener(tweet)
  if new_tweet.size > 140
    truncated_string = "#{new_tweet[0..136]}..."
    return truncated_string
  else 
    return tweet
  end
end