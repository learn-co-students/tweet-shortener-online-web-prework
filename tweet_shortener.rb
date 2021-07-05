# Write your code here.
require 'pry'

def dictionary
  words={
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "four" => '4',
    "for" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@" ,
    "and" => "&"
  }
end

def word_substituter(tweet)
  short_tweet=[]
  tweet=tweet.split( )
  tweet.collect {|word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    end
    short_tweet << word
  }
  short_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each {|tweet|
    puts word_substituter(tweet)
  }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet.slice!(tweet[137..-1])
    tweet << "..."
  else
    tweet
  end
end
