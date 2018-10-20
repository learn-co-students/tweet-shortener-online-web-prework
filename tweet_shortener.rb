# Write your code here.
require "pry"

def dictionary
  dictionary =
  {"hello"=> "hi", "to"=> "2", "two"=> "2", "too"=> "2","for"=> "4", "be"=> "b", "you"=> "u", "at"=> "@", "and"=> "&" }
end

def word_substituter(tweet_one)
  tweet_one_short = tweet_one.split(" ")
  tweet_one_short.map do |item|
    if dictionary.keys.include?(item.downcase)
      item = dictionary[item.downcase]
    else
      item
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.map do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener (tweets)
  if tweets.size > 140
    tweets[0...140]
  else tweets
  end
end

def shortened_tweet_truncator(tweets)
  if tweets.size > 140
    word_substituter(tweets)
    tweets[0...140]
  else tweets
  end
end
