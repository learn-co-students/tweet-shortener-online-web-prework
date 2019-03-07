require 'pry'

def dictionary
  shortened_words = {
    "hello" => "hi",
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "four" => '4',
    "for" => '4',
    "you" => 'u',
    "at" => "@",
    "and" => "&",
    "be" => 'b'
  }
end

def word_substituter(tweet)
  tweet.split(" ").map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
 (tweet.size > 140) ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).size > 140
    word_substituter(tweet)[0..136] + "..."
  else
    tweet
  end
end