#dictionary of tweet substitutes
def dictionary
  words = {
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

#replaces long words with their expected short form using the dictionary of tweet substitutes
def word_substituter(tweet_string)
  tweet_array = tweet_string.split(" ")
  dictionary.keys.each do |word|
    tweet_array.map! { |w| w.downcase == word ? dictionary[word] : w }
  end
  tweet_array.join(" ")
end

#shortens each tweet and prints the result 
def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

#shortens tweets that are more than 140 characters
#does not shorten tweets that are less than 130 characters
def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

#truncates tweets over 140 characters after shortening
def shortened_tweet_truncator(tweet)
  shortened_tweet = selective_tweet_shortener(tweet)
  if tweet.length < 140 
    tweet
  elsif
    shortened_tweet.length > 140 
      shortened_tweet[0...140-3] + "..." 
    else
      shortened_tweet
end
end
