def dictionary
  {
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

def word_substituter(string)
  result = []
  dictionary_array = dictionary.keys
  tweet = string.split(' ')
  tweet.each do |x|
      if dictionary_array.include?(x.downcase)
        result << dictionary[x.downcase]
      else
        result << x
end
end
result.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.map do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweets)
      if tweets.length > 140
        word_substituter(tweets)
      else
        tweets
      end
    end
def shortened_tweet_truncator(tweets)
  string = word_substituter(tweets)
  chars = string.length
  if chars > 140
     tweets[0..139]
  else
    tweets
   end
end
