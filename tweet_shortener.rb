

def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be"=> "b",
    "you"=> "u",
    "at"=> "@",
    "and"=> "&"
  }
end

def word_substituter(tweet_str)
  sub_ref = dictionary
  tweet_arr = tweet_str.split
  
  tweet_arr.each do |word|
    if sub_ref.key?(word.downcase)
      tweet_arr[tweet_arr.index(word)] = sub_ref[word.downcase]
    end
  end
  
  tweet_arr.join(" ")
end
    
def bulk_tweet_shortener(arr_of_tweets)
  arr_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet_str)
  if tweet_str.length > 140
    word_substituter(tweet_str)
    
  else
    tweet_str
  end
end

def shortened_tweet_truncator(tweet_str)
  if tweet_str.length > 140
    tweet_str[0..136] + "..."
  
  else
    tweet_str
  end
end

    
    
    