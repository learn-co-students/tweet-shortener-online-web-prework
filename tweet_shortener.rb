require 'pry'

def dictionary
  sub_words = {
    hello: "hi",
    to: "2",
    too: "2",
    two: "2",
    for: "4",
    four: "4",
    be: "b",
    at: "@",
    and: "&",
    you: "u"
  }
end



def word_substituter (tweet)
  tweet_array = tweet.split
  tweet_array.each_with_index do |word, index|
    dictionary.each do |key, value|
         if word.downcase == key.to_s
            tweet_array[index] = value
         end
      end
   end
   tweet_array.join(" ")
end


def bulk_tweet_shortener(tweets_array)
  tweets_array.map do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener (tweet)
  if tweet.length > 140
     word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  new_tweet = selective_tweet_shortener(tweet)
  if new_tweet.length >= 140
    new_tweet[1...138] + "..."
  else
    new_tweet
  end
end
