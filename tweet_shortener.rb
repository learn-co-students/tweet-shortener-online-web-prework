require "pry"
# Write your code here.
def dictionary
  {
    "hello" => "hi", 
    "to" => "2", 
    "two" => "2", 
    "too" => '2', 
    "for" => "4", 
    'four' => '4', 
    'be' => 'b', 
    'you' => 'u', 
    'at' => '@', 
    'and' => '&'
  }
end

def word_substituter(tweet)
  each_word = tweet.split(" ")
  each_word.collect do |word|
    if dictionary.include?(word.downcase)
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
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    "#{tweet[0..136]}..."
  else 
    selective_tweet_shortener(tweet)
  end
end 
