# Write your code here.
def dictionary
  subs = {
    "hello" => "hi",
    "to" => "2", "too" => "2", "two" => "2",
    "for" => "4", "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet.split.map do |subs|
  if dictionary.keys.include?(subs.downcase)
    subs = dictionary[subs.downcase]
  else
    subs
  end
  end.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.each do |tweeter|
    puts word_substituter(tweeter)
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
  checker = word_substituter(tweet)
  if checker.length > 140
    checker[0..139]
  else
    tweet
end
end

