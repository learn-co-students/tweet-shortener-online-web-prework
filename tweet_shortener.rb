# Write your code here.
# Word Substituter
def word_substituter(tweet)
  dictionary = {
    "hello" => 'hi',
    "be" => 'b',
    "you" => 'u',
    "at" => '@',
    "and" => '&',
    "to" =>'2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4'
  }
  wrking_grnd = tweet.split(" ")
  result = []
  wrking_grnd.collect do |wrd|
    if dictionary.has_key?(wrd.downcase)
      nw_wrd = dictionary[wrd.downcase]
      result +=[nw_wrd]
    else
      result +=[wrd]
    end
  end
   result.join(" ")
  end

def bulk_tweet_shortener(array)
  array.each do |each_tweet|
    puts word_substituter(each_tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length >139
      word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length >140
    tweet[0...140]
  else
    tweet
  end
  end
