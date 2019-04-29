# regexp in case I need it again => (/[\s'.,?!:#]/)

def dictionary
  subst_dict = {
    "hello" => 'hi', 
    "to" => '2', 
    "two" => '2', 
    "too" => '2', 
    "for" => '4', 
    "four" => '4', 
    "be" => 'b', 
    "you" => 'u', 
    "at" => '@', 
    "and" => '&'
  }
end

def word_substituter(tweet_string)
  tweet_words = tweet_string.split
  tweet_words.each_with_index do |word, index|
    if dictionary.keys.include?(word.downcase)
      tweet_words[index] = dictionary[word.downcase]
    end
  end
  tweet_words = tweet_words.join(" ")
end
    
def bulk_tweet_shortener(tweet_array)
  tweet_array.map do |tweet|
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
  if tweet.length > 140
    shorter_tweet = selective_tweet_shortener(tweet)
    if shorter_tweet.length > 140
      shortest_tweet = shorter_tweet[0..136] + "..."
    else
      shorter_tweet
    end
  else
    tweet
  end
end
    