def dictionary
  dictionary = {
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
  tweet_array = string.split(" ")
  tweet_short = []
  tweet_array.each do |word|
    if dictionary.key?(word.downcase) == true
      tweet_short << dictionary.values_at(word.downcase)
    else tweet_short << word
    end
  end
  tweet_short.flatten.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    tweet_short = []
    single_tweet_array = tweet.split(" ")
      single_tweet_array.each do |word|
        if dictionary.key?(word.downcase) == true
          tweet_short << dictionary.values_at(word.downcase)
        else tweet_short << word
        end
      end
      puts tweet_short.flatten.join(" ")
  end
end

def selective_tweet_shortener(string)
  tweet_array = string.split(" ")
  tweet_short = []
  
  if string.length > 140
    tweet_array.each do |word|
      if dictionary.key?(word.downcase) == true
        tweet_short << dictionary.values_at(word.downcase)
      else tweet_short << word
      end
    end
    tweet_short.flatten.join(" ")
  else string
  end
end


def shortened_tweet_truncator(string)
  tweet_array = string.split(" ")
  tweet_short = []
  
  if string.length > 140
    tweet_array.each do |word|
      if dictionary.key?(word.downcase) == true
        tweet_short << dictionary.values_at(word.downcase)
      else tweet_short << word
      end
    end
    shortened_tweet = tweet_short.flatten.join(" ")
    if shortened_tweet.length > 140
      "#{shortened_tweet[0...140]}"
    else shortened_tweet
    end
  else string
  end
end



