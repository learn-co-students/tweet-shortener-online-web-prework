require 'pry'

# List of word subsitutions
=begin
List of word substitutions
"hello" becomes 'hi'
"to, two, too" become '2' 
"for, four" become '4'
'be' becomes 'b'
'you' becomes 'u'
"at" becomes "@" 
"and" becomes "&"
=end 

# Define key words and their substitutions
def dictionary()
  word_list = {
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

# Replace long words with their expected short form
def word_substituter(tweet) 
  tweet_array = tweet.split
  
  # Iterate through tweet array, comparing with dictionary
    tweet_array.collect! do |word|
      dictionary().each do |key,val|
        if word == key || word == key.capitalize
          word = val
        end
      end
      word
    end
  
  # Convert array back to string
  tweet_array.join(" ")
end

# Shorten an array of tweets; puts results
def bulk_tweet_shortener(tweets) 
  tweets.each do |phrase|
    puts word_substituter(phrase)
  end
end

# Shorten tweets that are more than 140 characters
def selective_tweet_shortener(tweet)
  if tweet.length > 140 
    tweet = word_substituter(tweet)
  end
  tweet
end

# Truncate tweets over 140 characters
def shortened_tweet_truncator(tweet)    
  if word_substitutor(tweet).length > 140 
    word_substitutor(tweet)[0...137] + "..."
  else 
    tweet
  end 
end