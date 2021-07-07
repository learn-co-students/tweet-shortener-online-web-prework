# Write your code here.
def dictionary
  words = {
    "hello" => "hi",
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "For" => '4',
    "four" => '4',
    "be" => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  out = tweet.split(' ')
  keys = dictionary.keys
  out.each do |i|
    keys.each do |a|
      if i == a
        out[out.index(i)] = dictionary[a]
      end
    end
  end
  outt = out.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |i|
    puts word_substituter(i)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length < 130
    tweet
  elsif tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 137
    tweak = tweet[1..137]
    out = tweak.split(" ")
    out.push("...")
    outt = out.join(' ')
    outt[1..140]
  else
    tweet
  end
end
  