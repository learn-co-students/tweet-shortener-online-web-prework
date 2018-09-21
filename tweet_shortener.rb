# Write your code here.

def dictionary
  dict = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "@"
  }
end

def word_substituter(tweet_one)
  dict = dictionary()
  tempArray = []
  tweetArray = tweet_one.split(" ")
  tweetArray.each {|word| 
    dictionary.each {|key, value|
      if word == value
       word = key
       tempArray << word
      end
       tempArray << word
    
    }
    returnTweet = tempArray.join(" ")
  }
end