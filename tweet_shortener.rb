def dictionary
  diction_hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

test_tweet = "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."

def word_substituter(tweet_str)
  tweet_arr = tweet_str.split(" ")
  counter = 0
  tweet_arr.each do |word|
    dictionary.each do |key, value|
      if word.downcase == key
        tweet_arr[counter] = value
      end
    end
    counter += 1
  end
  tweet_arr.join(" ")
end

def bulk_tweet_shortener(tweet_arr)
  tweet_arr.each do |tweet|
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
  tweet = selective_tweet_shortener(tweet_str)
  if tweet.length > 140
    return (tweet[1..137] + "...")
  else
    tweet
  end
end