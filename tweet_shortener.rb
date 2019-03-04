def dictionary
  substitutes = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you'=> 'u',
    "at" => "@",
    "and" => "&"
  }
  return substitutes
end

def word_substituter(tweet)
  tweet_array = tweet.split
  substitutes = dictionary
  keys = substitutes.keys
  new_array = []
  tweet_array.collect do |word|
    if keys.include?(word.downcase)
      word = substitutes[word.downcase]
    end
    new_array << word
  end
  return new_array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each { |tweet| puts word_substituter(tweet)  }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  end
  return tweet
end

def shortened_tweet_truncator(tweet)
  tweet = word_substituter(tweet)
  if tweet.length > 140
    return tweet[0...140]
  else
    return tweet
  end
end
