require 'pry'

def dictionary
  dictionary = {
    "hello" => "hi",
    "too" => "to",
    "two" => "2",
    "to" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end


def word_substituter(string_in)
  string_ary = string_in.split(" ")
  dictionary.each do |key, value|
    string_ary.each do |index|
      if index.downcase == key
      index.gsub!(index, value)
      end
    end
  end
  string_in = string_ary.join(" ")
end




def bulk_tweet_shortener(tweets)
  tweets.each {|index| puts word_substituter(index)}
end


def selective_tweet_shortener(tweet)
  if tweet.size > 140
    tweet.slice!(0..139)
  else
    tweet
  end
end


def shortened_tweet_truncator(tweet)
  word_substituter(tweet)
  selective_tweet_shortener(tweet)
end
