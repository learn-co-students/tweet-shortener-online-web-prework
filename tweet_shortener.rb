require 'pry'
def dictionary
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter (string)
  dictionary
  long = string.split(" ")
  long.each do |word|
    if dictionary.keys.include? (word.downcase)
      word.replace (dictionary[word.downcase])
    end
  end
  long.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter (tweet)
  end
end

def selective_tweet_shortener(tweet_one)
  if tweet_one.length > 140
    word_substituter (tweet_one)
  else
    return tweet_one
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    return tweet[0..139]
  else
    return tweet
  end
end
