# Write your code here.


def dictionary(word)
  dic = {
    hello: 'hi',
    to: '2',
    two: '2',
    too: '2',
    for: '4',
    four: '4',
    be: 'b',
    you: 'u',
    at: '@',
    and: '&'
  }

  dic.each do |key, value|
    if key.to_s == word
      word = dic[key]
    elsif key.to_s.capitalize == word
      word = dic[key].to_s.capitalize
    end
  end
  word
end

def word_substituter(tweet)
  words = tweet.split(" ")
  short_words = []
  words.each do |word|
    short_words << dictionary(word)
  end
  short_words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
  short_tweet = word_substituter(tweet)
  puts short_tweet
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    short_tweet = word_substituter(tweet)
    return short_tweet
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    short_tweet = word_substituter(tweet)
    return short_tweet[0..136] + "..."
  else
    return tweet
  end
end
