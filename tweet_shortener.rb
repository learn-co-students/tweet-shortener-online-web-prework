# Write your code here.# Write your code here.# Write your code here.
require 'pry'

def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
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
  dictionary
  word_list = []
  word_list = tweet.split(" ") if tweet.is_a? String
  word_list.collect! {|word|
    if dictionary.keys.include?(word)
      word = dictionary[word]
    else
      word
    end
  }
  word_list.join(" ")
end

def bulk_tweet_shortener(tweets_list)
  tweets_list.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  tweet = word_substituter(tweet)
  if tweet.length > 140
    tweet = tweet[1..140]
  else
    tweet
  end
end
