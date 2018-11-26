# Write your code here.
def dictionary(word)
  replacements = {
    'hello' => 'hi',
    'to' => 2,
    'too' => 2,
    'two' => 2,
    'for' => 4,
    'four' => 4,
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&'
  }
  replacements[word.downcase] || word
end

def word_substituter(tweet)
  tweet = tweet.split.map do |word|
    word = dictionary(word)
  end
  tweet.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  tweet.length > 140 ? word_substituter(tweet)[0...140] : tweet
end
