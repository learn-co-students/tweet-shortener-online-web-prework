def dictionary
  {"hello" => "hi","to" => "2","two" => "2","too" => "2","for" => "4","four" => "4","be" => "b","you" => "u","at" => "@","and" => "&"}
end

def word_substituter(tweet)
  tweet.split(" ").map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |strings|
    puts word_substituter(strings)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length >= 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  tweet_adj = selective_tweet_shortener(tweet)
  if tweet_adj.length >= 140
    new_tweet = tweet_adj[0..136]
    new_tweet << "..."
    new_tweet
  else
    tweet_adj
  end
end