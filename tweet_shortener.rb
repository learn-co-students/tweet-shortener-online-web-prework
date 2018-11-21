require 'pry'

def dictionary
  short = {
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
  array = tweet.split.collect do |word|
    if dictionary.keys.any? { |w| w == word.downcase }
      word = dictionary[word.downcase]
    else
      word
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener(tweets_array)
  shortened_tweets = []
  tweets_array.each do |tweet|
    shortened_tweets << word_substituter(tweet)
  end
  shortened_tweets.each do |short_tweet|
    puts short_tweet
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
    new_tweet = selective_tweet_shortener(tweet)[0...140]
    new_tweet
  else
    selective_tweet_shortener(tweet)
  end
end
