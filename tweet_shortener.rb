def dictionary
  words = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@" ,
    "and" => "&"
  }
end


def word_substituter(tweet)
  newarr = []
  arr = tweet.split(" ")
  arr.each do |word|
  
    if dictionary.has_key?(word) 
      newarr << dictionary[word]
    elsif dictionary.has_key?(word.downcase)
      newarr << dictionary[word.downcase]
    else
      newarr << word
    end
   
  end
newarr.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  
    if tweet.length < 140  
      return tweet
    else
      word_substituter(tweet)
    end
end



def shortened_tweet_truncator(tweet)
  substituted = word_substituter(tweet)
  
  if substituted.length > 140
    return tweet[0..139]
  else
    return substituted
  end
end
