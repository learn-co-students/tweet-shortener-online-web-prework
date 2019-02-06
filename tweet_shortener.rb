require 'pry'
# Write your code here.

# tweet = "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"

# new_tweet = ["OMG", "you", "guys,", "you", "won't", "believe", "how", "sweet", "my", "kitten", "is.", "My", "kitten", "is", "like", "super", "cuddly", "and", "too", "cute", "to", "be", "believed", "right?"]

def dictionary
  dictionary = {
    "hello" => "hi",
    ["to", "two", "too"] => "2",
    ["for", "four"] => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  new_tweet = tweet.split(" ")# split the tweet into individual words
  changed_tweet = []          # instantiate a new array `changed_tweet`
  new_tweet.collect do |word| # for each tweet, the variable is `word`
    dictionary.each do |key, value| # for the word, loop through dictionary
      if key.include?(word)     # if the current dictionary key includes word
        word = value            # assign the key's value to the word
      end
    end
    changed_tweet << word     # enter word into the `changed_tweet` array
  end

  changed_tweet.join(" ")     # rejoin the changed_tweet arrays by spaces
end



def bulk_tweet_shortener(tweets)
  tweets.collect do |tweet|
    puts word_substituter(tweet)
  end
end
