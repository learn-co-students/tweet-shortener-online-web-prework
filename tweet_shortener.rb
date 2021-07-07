def dictionary 
  wrds = {
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
  }# Write your code here.
  end

def word_substituter(str)
  tweet = str.split(" ").map do |string|
    if dictionary.keys.include?(string.downcase)
      string = dictionary[string.downcase]
    else
      string
    end
    end
    tweet.join(" ")
  end

def bulk_tweet_shortener(twts)
  twts.each {|blah|puts word_substituter(blah)}
  end

def selective_tweet_shortener(twts)
  if twts.length > 140
    word_substituter(twts)
    else twts
    end
  end

def shortened_tweet_truncator(twts)
  if word_substituter(twts).length > 140
    twts[0..136] + "..."
  else twts
  end
  end