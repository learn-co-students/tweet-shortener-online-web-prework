# Write your code here.
  def dictionary () 
    {
      'hello' => 'hi',
      'to' => '2',
      'two' => '2',
      'too' => '2', 
      "for" => "4",
      "four" => "4",
      'be' => 'b',
      'you' => 'u',
      'at' => '@' ,
      'and' => '&'
    }
  end
 def word_substituter(tweet)
  splitwords = tweet.split(" ")
  splitwords.collect do |x|
  dictionary.collect do |key, value|
    if x.downcase == key.downcase 
       x.replace(value)
    end 
    end
  end 
  splitwords.join(" ")
end 

def bulk_tweet_shortener(tweet)
  tweet.collect do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length >= 140
    word_substituter(tweet)
  else
    tweet
  end
end


def shortened_tweet_truncator(tweet)
truncate = ""
  if word_substituter(tweet).length > 140
     truncater << word_substituter(tweet)[0..136] + "..."
  else
     truncater << word_substituter(tweet)
end
 truncater
end

