require 'pry'

def dictionary

dictionary_hash = {
    "hello" => "hi",
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => "@",
    "and" => "&"}
end

def word_substituter(tweet_string)
  tweet_array = tweet_string.split
    dictionary_hash = dictionary
  dictionary_hash.each do |key, value|
    tweet_array.each do |word|
      if word.downcase == key.to_s
        word.replace(value.to_s)
      end
    end
  end
  tweet_array.join(" ")
end

def bulk_tweet_shortener(tweets_array)
  tweets_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener (tweet_string)
  if tweet_string.size > 140
    word_substituter(tweet_string)
  else
    tweet_string
 end
end

def shortened_tweet_truncator(tweet_string)
  shortened_tweet_string = selective_tweet_shortener(tweet_string)
  if shortened_tweet_string.size > 140
    tweet_string_output = "#{shortened_tweet_string[0..136]}..."
     tweet_string_output
  else
    tweet_string
 end
end
