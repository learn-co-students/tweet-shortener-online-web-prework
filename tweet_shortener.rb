# Write your code here.

# create dictionary method
def dictionary
  dict = {
    "hello" => "hi",
    "to" => 2,
    "two" => 2,
    "too" => 2,
    "for" => 4,
    "four" => 4,
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  dict = dictionary

  tweet.split(" ").map do |value|
    dict.has_key?(value.downcase) ? dict[value.downcase] : value
  end.join(" ")
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

def  shortened_tweet_truncator(tweet)
  substituted_tweet = selective_tweet_shortener(tweet)
  if substituted_tweet.length > 140
    "#{substituted_tweet[0...137]}..."
  else
    substituted_tweet
  end
end
