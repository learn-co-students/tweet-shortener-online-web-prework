require 'pry'
dictionary = {
               "hello" => 'hi',
               "to" => '2',
               "two" => '2',
               "too" => '2',
               "for" => '4',
               "four" => '4',
               "be" => 'b',
               "you" => 'u',
               "at" => '@',
               "and" => '&'
             }


def word_substituter(string)
  dictionary = {
                 "hello" => 'hi',
                 "to" => '2',
                 "two" => '2',
                 "too" => '2',
                 "for" => '4',
                 "four" => '4',
                 "be" => 'b',
                 "you" => 'u',
                 "at" => '@',
                 "and" => '&'
               }
  array = string.split
  updatedArray = array.map do |word|
    if(dictionary[word.downcase])
      word = dictionary[word.downcase]
    end
    word
  end
  updatedArray.join(' ')
end

def bulk_tweet_shortener(array)
  array.map do |strings|
  puts word_substituter(strings)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else
   return tweet
  end
end

def shortened_tweet_truncator(tweet)
  word_substituter(tweet)
  if word_substituter(tweet).size > 140
     word_substituter(tweet)[0..136] << "..."
  else
    tweet
  end
end# Write your code here.
