def word_substituter(text)
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  
  words_only = []
  words_w_punc = text.split()
  words_w_punc.each do
    |word|
    words_only.push(word.sub(/'\W+/, ""))
  end
  tweet_words = []
  words_only.each_index do 
    |index|
    test_word = words_only[index]
    target = words_w_punc[index]
    replacement = dictionary.key?(test_word.downcase) ? dictionary[test_word.downcase] : test_word
    if test_word.capitalize == test_word then replacement.capitalize end
    punctuation = test_word == target ? "" : target.sub(test_word, "")
    tweet_words.push(replacement << punctuation)
  end
  tweet_words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.collect do
    |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140 then return word_substituter(tweet) end
  tweet
end

def shortened_tweet_truncator(tweet)
  tweet = selective_tweet_shortener(tweet)
  return tweet.length > 140 ? tweet[0,140] : tweet
end