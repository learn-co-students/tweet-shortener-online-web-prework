require "pry"

def dictionary
 {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "For" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_array = Array.new

  tweet.split(" ").map do |word|
    if dictionary.keys.include?(word)
      word = dictionary[word]
    else
      word
    end
  end.join(" ")
  
  
  # use_this_word = nil
  # tweet.split.map do |word|
  #   dictionary.keys.each do |key|
  #     use_this_word = word
  #     if word == key
  #       use_this_word = key
  #     end
  #     # binding.pry
  #   end
  #   # binding.pry
  #   tweet_array << use_this_word
  # end

  # tweet_array.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.size > 140
    word_substituter(tweet)[0..139]
  else
    tweet
  end  
end