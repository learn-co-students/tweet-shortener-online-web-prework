require 'pry'
def dictionary
  {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "For" => "4",
  "Four" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }
end

def word_substituter(tweet)
  words = tweet.split(" ")

  words.map do |i|
    dictionary.map do |key, value|
      if key == i
        i.replace(value)
      end
    end
  end
  words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.map do |tweet|
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
    if tweet.length > 140
      tweet = tweet[0..136] + "..."
    else
      tweet
    end
end
