def word_substituter(tweet)
 word_list = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  
  #split the tweet into an Array
  words = tweet.split(" ")
  words_to_shorten = word_list.keys
  
  #iterate over the Array
  words.each_with_index do |word, i|
  #if the word is a key in the word_list, replace with substitute word_list
    if words_to_shorten.include?(word)
      words[i] = word_list[word]
    end
  end
  #join array back into a string/tweet
  shortened_tweet = words.join(" ")
  
  #return the tweet
  shortened_tweet
end




def bulk_tweet_shortener(array_of_tweets)
  shortened_tweets = []
  
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
  
end



def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end


def shortened_tweet_truncator(tweet)
  shortened_tweet = word_substituter(tweet)
  new_tweet = ""
  
  if shortened_tweet.length <= 140
    return tweet
  else
    new_tweet = tweet[0...137] + "..."
  end
  
  new_tweet
end
