require 'pry'

def dictionary
  {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
 end

 def word_substituter(tweet)
   substitutions = dictionary
   substitution_keys = substitutions.keys

   tweet = tweet.split(" ")

   new_tweet = []

   tweet.each do |w|
     if substitution_keys.include?(w) || substitution_keys.include?(w.downcase)
      new_tweet << substitutions[w.downcase]
     else
      new_tweet << w
     end
   end

   new_tweet = new_tweet.join(" ")

   new_tweet

 end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
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
  tweet = selective_tweet_shortener(tweet)
  if tweet.length > 140
    "#{tweet[0..136]}..."
  else
    tweet
  end
end
