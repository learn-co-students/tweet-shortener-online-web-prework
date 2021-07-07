# Write your code here.
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
   tweet = string.split(" ") #turning the tweet into an array
   new_tweet = tweet.collect do |word| #iterating the tweets words and assigning them to "word"
      if dictionary.keys.include?(word.downcase) #reviewing if the dictionary keys are included in the "word" of the tweet
         dictionary[word.downcase] #returning dictionary word
      else
         word #no change needed, just return the word
      end
   end
   new_tweet.join(" ") #turn array back to string with join
end

def bulk_tweet_shortener(tweet)
  tweet.each {|string| puts word_substituter(string)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end
  
def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    word_substituter(tweet)
    tweet[0...137] << "..."
  else
    tweet
  end
end





















