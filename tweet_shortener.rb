# Write your code here.

def dictionary 
  subsituted_words = {
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
  # replaces long words with their expected short form

 tweet.split(" ").map do |word|
    if dictionary.has_key?(word.downcase)
      word = dictionary.fetch(word.downcase)
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(bulk_tweets)
  bulk_tweets.map do |tweet|
   puts word_substituter(tweet)
  end
end 

def selective_tweet_shortener(tweet)
    if tweet.split("").length > 140 
      word_substituter(tweet)
    else tweet
    end 
end

def shortened_tweet_truncator(tweet)
    over_limit = selective_tweet_shortener(tweet)
    if over_limit.split("").length > 140
      over_limit.split("")[0..136].join + "..."
    else tweet
    end
end
