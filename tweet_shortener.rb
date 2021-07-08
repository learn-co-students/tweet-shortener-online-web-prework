# Write your code here.
def dictionary
  words = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => '@',
    "and" => "&"
  }
end
def word_substituter(tweet)

  tweet_arr = tweet.split
  tweet_arr.each do |word|
    dictionary.each do |k, v|
      if word.downcase == k
        word.replace(v)
      end
    end
  end
  result = tweet_arr.join(" ")
  return result
end

def bulk_tweet_shortener(tweets)
  tweets.each do |ele|
    puts word_substituter(ele)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  tweets = selective_tweet_shortener(tweet)
  if tweets.length <= 140
    puts tweets
    return tweets
  else
    tweets = tweets[0..136] + "..."
    puts tweets
    return tweets
  end
end
