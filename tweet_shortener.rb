require 'pry'

def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => '2',
    "for" => "4",
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
    }

end


def word_substituter(tweet)
  tweet_array = tweet.split(" ")

  tweet_array.map do |word|
      if dictionary.keys.include?(word.downcase)
       word2 = dictionary[word.downcase]
     else
       word
     end
  end.join(" ")
end

def bulk_tweet_shortener(tweets_array)
tweets_array.map do |tweet|
  puts word_substituter(tweet)
end
end



def selective_tweet_shortener(tweet_string)
if tweet_string.length > 140
  word_substituter(tweet_string)
else
  tweet_string
end


def shortened_tweet_truncator(tweet_string)
  if word_substituter(tweet_string).length > 140
    140_char = tweet_string[0..139]
    "#{140_char}..."

    binding.pry
  else
    tweet_string

  end
end


end
