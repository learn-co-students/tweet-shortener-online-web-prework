require 'pry'

def dictionary
  dictionary_hash = {
    "Hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "For" => "4"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split
  tweet_array.each do |word|
    dictionary.each do |key, value|
      if word == key
        word.replace value
      end
    end
  end
  tweet_array.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    new_tweet = word_substituter(tweet)
    puts new_tweet
  end
end

def selective_tweet_shortener(tweet)
    into_an_array = tweet.split("")
      if into_an_array.length > 140
        tweet_string = into_an_array.join("")
        word_substituter(tweet_string)
      else
        return into_an_array.join("")
      end
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = word_substituter(tweet)
    shortened_tweet[0..139]
end


