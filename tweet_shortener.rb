$word_substitute = {}

def dictionary
  $word_substitute = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&", "Hello" => "hi", "To" => "2", "Two" => "2", "Too" => "2", "For" => "4", "Four" => "4", "Be" => "b", "You" => "u", "At" => "@", "And" => "&"}
end

def word_substituter(string)
  word_array = string.split(" ")
  dictionary
  short_tweet = ""
  $word_substitute.each do |long_word, short_word|
    word_array.each do |word|
      if word == long_word || word.capitalize == long_word
      word.replace(short_word)
      end
    end
  end
  short_tweet = word_array.join(" ")
  short_tweet
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else
    string
  end
end

def shortened_tweet_truncator(string)
  if selective_tweet_shortener(string).length > 140
    selective_tweet_shortener(string)[0...137] + "..."
  else
    string 
  end
end



# Write your code here.