require 'pry'
def dictionary
 
  dictionary = {  "hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u",  "at" => "@", "and" => "&"}

end

def word_substituter(tweet)
  tweet_ary = tweet.split(" ")
  dictionary
  tweet_ary.each.with_index do |word, index|
    if dictionary.keys.include?(word.downcase)
      tweet_ary[index] = dictionary[word.downcase]
    end
  end
  tweet_ary.join(" ")
end

def bulk_tweet_shortener(array)
  
  array.each do |tweet|
   puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  elsif tweet.length <= 140
  tweet
  end
end
