require 'pry'
dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
  
def word_substituter(tweet)
  dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&",
  "for" => "4"
}
  cool_array = []
  tweet_array = tweet.split
  tweet_array.each do |word|
    word.downcase
    if dictionary.keys.include?(word.downcase)
      word.replace dictionary.values_at(word.downcase).to_s.byteslice(2)
    end
  end  
  cool_array = tweet_array.join(" ")
  cool_array
end  

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end  
end  

def selective_tweet_shortener(tweet)
    if tweet.length > 140
      puts word_substituter(tweet)
      return word_substituter(tweet)
    else
      puts tweet
      return tweet
    end
end  
  
def shortened_tweet_truncator(tweet)
  if tweet.length <= 140
    return tweet
  else  
    short_tweet = word_substituter(tweet)
    if short_tweet.length <= 140
      return short_tweet
    else
     shorter_tweet = short_tweet.slice(0,140)
     return shorter_tweet
    end
  end  
end  
     
