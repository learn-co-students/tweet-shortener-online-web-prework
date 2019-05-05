def dictionary 
   dictionary= {
  "hello" => ['hi'],
  "to"=> ['2'] ,
  "two"=> ['2'] ,
  "too" => ['2'] ,
  "for" => ['4'], 
  "For"=> ['4'] ,
  "four" => ['4'],
  'be' => ['b'],
  'you' => ['u'],
  "at" => ["@" ],
  "and" => ["&"],
  }
end

def word_substituter (tweet)
  
  shortened = []
   tweet.split.each {|word|
   shortened.push(word)
   
  dictionary.each {|key, value|
  shortened.delete_if {|word|
   word == key
   
   if word == key
      shortened.push(dictionary[key])
    end

   }
  }
  
  }
  shortened.join(" ")
end
  
  def bulk_tweet_shortener(tweets)
    tweets.each {|tweet|
    puts word_substituter(tweet)
    }
  end

  
  def selective_tweet_shortener(tweets)
    if tweets.length > 140
      word_substituter(tweets)
    else
      tweets
    end
    
  end
    
    
    