def dictionary
  substitute = {
  "hello": 'hi',
  "to": '2',
  "two": '2',
  "too": '2',
  "for": '4',
  "four": '4',
  'be': 'b',
  'you': 'u',
  "at": "@",
  "and": "&"
  }
end

def word_substituter(tweet_string)
  tweet_to_array = []
  keys = []
  values = []
  i = 0

  tweet_string.split(" ").each do |x|
    tweet_to_array.push(x)
  end

  dictionary.keys.each do |key|
    keys.push(key.to_s)
  end

  dictionary.values.each do |value|
    values.push(value.to_s)
  end
  
  for word in tweet_to_array
    while i < keys.length
      if word.downcase == keys[i].to_s
        tweet_to_array[tweet_to_array.index(word)] = values[i]
        i += 1
      else
        i += 1
      end
    end
    i = 0
  end
tweet_to_array.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length < 141
    tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  tweet = selective_tweet_shortener(tweet)

  if tweet.length > 141
    tweet[0..136] + "..."
  else
    tweet
  end
end
