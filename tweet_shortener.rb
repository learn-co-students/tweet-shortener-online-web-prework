def dictionary(word)
  dic={hello: 'hi',
  too: '2',
  to: '2',
  two: '2',
  for:'4',
  four:'4',
  be:'b',
  you:'u',
  at:'@',
  and:'&'}
  dic[word.to_sym]
end# Write your code here.

def word_substituter(long)
  long_array=long.split
  fin_array=[]
  long_array.each do |word|
    if dictionary(word.downcase)!=nil
      fin_array<<dictionary(word.downcase)
    else
      fin_array<<word
    end
  end
  fin_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  fin_array=[]
  tweets.each do |tweet|
    #if tweet.length >140
      puts word_substituter(tweet)
    #else
    #  puts tweet.to_s
    #end
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length >140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length>140
    tweet[0..139]
  else
    tweet
  end
end
