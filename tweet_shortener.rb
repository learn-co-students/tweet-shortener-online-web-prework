# Here is the list of words and their substitutes:
# "hello" becomes 'hi'
# "to, two, too" become '2' 
# "for, four" become '4'
# 'be' becomes 'b'
# 'you' becomes 'u'
# "at" becomes "@" 
# "and" becomes "&"

require 'pry'

def dictionary
  dictionary = {
    "hello" => 'hi',
    "to"=>'2',
    "two"=> '2',
    "too"=> '2',
    "For" => '4',
    "for" => '4',
    "four"=> '4',
    'be'=> 'b',
    'you'=> 'u',
    "at"=> "@",
    "and"=> "&"
  }
end

def word_substituter(tweet)
  new_tweet_arry = []
 # dictionary_keys_arry = []
  # tweet_arry = tweet.split()
  tweet.split.collect do |word|
    if dictionary.keys.include?(word)
      word = dictionary[word]
    else
      word
    end
    new_tweet_arry << word
  end
  new_tweet_phrase = new_tweet_arry.join(" ")
  new_tweet_phrase
 # end.join(" ")
  
end

def bulk_tweet_shortener(tweet)
  tweet.collect do |phrase|
   new_tweet_arry = []
    phrase.split.collect do |word|
      if dictionary.keys.include?(word)
        word = dictionary[word]
      else
        word    
      end
     new_tweet_arry << word 
    end
   new_tweet_phrase = new_tweet_arry.join(" ")
   puts new_tweet_phrase
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    new_tweet_arry = []
    tweet.split.collect do |word|
     if dictionary.keys.include?(word)
      word = dictionary[word]
     else
      word
     end
     new_tweet_arry << word
    end
   new_tweet_phrase = new_tweet_arry.join(" ")
   new_tweet_phrase
 else
   tweet
  end
end


def shortened_tweet_truncator(tweet)
  if tweet.length > 140
      new_tweet_arry = []
      tweet.split.collect do |word|
       if dictionary.keys.include?(word)
        word = dictionary[word]
       else
        word
       end
       new_tweet_arry << word
      end
     new_tweet_phrase = new_tweet_arry.join(" ")
     new_tweet_phrase[0..135] + " ..."
  else
     tweet
  end   
end


