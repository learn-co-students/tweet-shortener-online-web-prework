def dictionary
  {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "For" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

 def word_substituter(string)
  words_array = string.split(" ")
  dictionary.each do |k, v|
    while words_array.include?(k)
      words_array[words_array.index(k)] = v
    end
  end
  words_array.join(" ")
end

 def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

 def selective_tweet_shortener(string)
  string.length > 140 ? word_substituter(string) : string
end

 def shortened_tweet_truncator(tweet)
  selective_tweet_shortener(tweet).length > 140 ? selective_tweet_shortener(tweet)[0..136] + "..." : selective_tweet_shortener(tweet)
end