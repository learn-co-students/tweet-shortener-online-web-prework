def dictionary(word)
  substitutes = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&" }

  is_cap = false
  if word == word.capitalize
    is_cap = true
    word = word.downcase
  end
  if(substitutes.include?(word))
    return substitutes[word]
  else
    if is_cap
      word = word.capitalize
    end
    return word
  end
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  new_array = []
  tweet_array.each do |word|
    new_array.push(dictionary(word))
  end
  new_array.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length < 140
    return tweet
  else
    return word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  tweet = word_substituter(tweet)
  if tweet.length >= 140
    tweet = tweet[0, 137] + "..."
  end
  tweet
end
