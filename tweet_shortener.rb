# Write your code here.
def dictionary
words = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "For" => "4", "for" => "4", "four" => "4",
"be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end

def word_substituter(string)

  string.split.collect do |word|
    if dictionary.keys.include?(word)
      word = dictionary[word]
    else
      word
    end
  end.join(' ')
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |element|
    puts word_substituter(element)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length>140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  tiny_tweet = word_substituter(tweet)
  if tiny_tweet.length > 140
    tiny_tweet.slice(0, 137)+"..."
  else
    tweet
  end
end
