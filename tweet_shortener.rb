

def dictionary
   {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "For" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  a_array = tweet.split
  dictionary.each do |k, v|
    a_array.map! { |w| w == k ? v : w }
  end
  a_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.collect do |tweet|
    a_array = tweet.split
    dictionary.each do |k, v|
      a_array.map! { |w| w == k ? v : w}
    end 
    puts a_array.join(" ") 
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    a_array = tweet.split
    dictionary.each do |k, v|
      a_array.map! {| w | w == k ? v : w }
    end
    a_array.join(" ")
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    a_array = tweet.split
    dictionary.each do |k, v|
      a_array.map! {|w| w == k ? v : w }
    end
    tweet = a_array.join(" ")
  end
   
  if tweet.length > 140
    tweet.slice!(137..-1)
    tweet << "..."
  else 
    tweet
  end
end