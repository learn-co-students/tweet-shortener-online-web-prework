#
#"hello" becomes 'hi'
#"to, two, too" become '2'
#"for, four" become '4'
#'be' becomes 'b'
#'you' becomes 'u'
#"at" becomes "@"
#"and" becomes "&"
$dict = {
  "hello"=>"hi",
  "to"=>"2",
  "two"=>"2",
  "too"=>"2",
  "for"=>"4",
  "four"=>"4",
  "be"=>"b",
  "you"=>"u",
  "at"=>"@",
  "and"=>"&"
  }

def word_substituter(tweet)
  tweet.split().map{|word|
    if $dict.has_key?(word.downcase)
      $dict[word.downcase]
    else word
    end
    }.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each{ |tweet|
  puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length>140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length>140
    selective_tweet_shortener(tweet)[0...140]
  else
    selective_tweet_shortener(tweet)
  end
end

#puts shortened_tweet_truncator("Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")
