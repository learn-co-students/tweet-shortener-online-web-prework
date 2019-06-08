# Write your code here.
def dictionary
  words_to_be_substituted = {
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
  dict = dictionary
  tweeted_words = tweet.split(" ")
  
   tweeted_words.collect do |tweeted_word|
     dict.collect do |key, value|
       if tweeted_word == key
         tweeted_word.replace(value)
       end
      end
    end
    tweeted_words.join(" ")
  end
    
def bulk_tweet_shortener(array_tweet)
  array_tweet.collect do |tweet|
    word_substituter(tweet)
  end
end



     