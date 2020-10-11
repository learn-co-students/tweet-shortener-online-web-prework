# Write your code here.
def dictionary
  sub_words = {
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


def word_substituter(tweet)
  
  words = tweet.split.each do |word|
    dictionary.collect do |key, value|
      if word.downcase == key.downcase
          word.replace(value)
     
   end
  end
 end 
   words.join(" ")
end



def bulk_tweet_shortener(tweets)
  tweets.each do |word|
    puts word_substituter(word)
    
   end
end



def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
 end
end



def shortened_tweet_truncator(tweet)
  tweet = selective_tweet_shortener(tweet)
    if tweet.length > 140 
        tweet[0..136] + "..."
   else
       tweet
  end
end


