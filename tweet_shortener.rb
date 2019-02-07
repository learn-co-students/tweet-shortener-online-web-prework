require 'pry'
# Write your code here.

# tweet = "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"

# new_tweet = ["OMG", "you", "guys,", "you", "won't", "believe", "how", "sweet", "my", "kitten", "is.", "My", "kitten", "is", "like", "super", "cuddly", "and", "too", "cute", "to", "be", "believed", "right?"]

def dictionary
  dictionary = {
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
  new_tweet = tweet.split(" ")
  changed_tweet = []
  new_tweet.each do |word|
    dictionary.each do |key, value|
      if key == word || key.capitalize == word
        word = value
      end
    end
    changed_tweet << word
  end
  changed_tweet.join(" ")
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
  truncated_tweet = []
  if tweet.length > 140
    truncated_tweet = tweet[0..133]
    truncated_tweet << " (...)"
  else truncated_tweet = tweet
  end
  truncated_tweet
end
