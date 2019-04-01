# Write your code here.
def dictionary 
  words = {
    "hello" => "hi", 
    "to" => '2',
    "two" => '2',
     "too" => '2',
    "for" => '4',
    "four" => '4',
    "you"=> "u",
    "at" => "@",
    "and" => "&",
    "be" => 'b'
  } # end hash words 
  words
end #end dictionary

def word_substituter(tweet)
  tweetArray = tweet.split
  keyArray = dictionary.keys
  valueArray = dictionary.values
  dictionary.each do |key, value|
  tweetArray. each do |word|
    tweet.sub!(" #{key} ", " #{value} ")
    tweet.sub!(" #{key.capitalize} ", " #{value.capitalize} ")   
  end #do
  end #do
  tweet 
  #puts tweet
end #end word_substitute

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end #end do 
end #end bulk_tweet_shortener

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else 
    tweet
  end 
end #end selective_tweet_shortener

def shortened_tweet_truncator(tweet)
  new_short_tweet = selective_tweet_shortener(tweet)
  if new_short_tweet.size > 140
    new_short_tweet[0..136] + "..."
  else
    new_short_tweet
  end #end if
end #end shortened_tweet_truncator