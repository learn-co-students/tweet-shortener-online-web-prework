require "pry"

# Write your code here.

# "hello" becomes 'hi'
# "to, two, too" become '2' 
# "for, four" become '4'
# 'be' becomes 'b'
# 'you' becomes 'u'
# "at" becomes "@" 
# "and" becomes "&"

# "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

# "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"

# "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."

# "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"

# "New game. Middle aged tweet followed by #youngPeopleHashTag Example: Gotta get my colonoscopy and mammogram soon. Prevention is key! #swag"

def dictionary
  dictionary = {
    "hello" => ["hi"],
    "to" => ["2"],
    "two" => ["2"],
    "too" => ["2"],
    "for" => ["4"],
    "four" => ["4"],
    "be" => ["b"],
    "you" => ["u"],
    "at" => ["@"],
    "and" => ["&"]
  }
end


def word_substituter(tweet_string)
  
  tweet_array = tweet_string.split(" ").map { |word| word}
  
  shortened = []
  
  tweet_array.each_with_index {|word, index|
    dictionary.each { |key, value|
      if word == key || word == key.capitalize
        shortened[index] = value.join("")
        break
      else
        shortened[index] = word
      end
    }
  }
  shortened.join(" ")

end

def bulk_tweet_shortener(tweets_array)
  tweets_array.each {|item|
    puts word_substituter(item)
  }
end

def selective_tweet_shortener(tweet)
  if tweet == nil 
    puts "Invalid tweet @ #{tweet}"
  end
  if tweet.length > 140
    word_substituter(tweet)
  else tweet.length < 130
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet == nil 
    puts "Invalid tweet @ #{tweet}"
  end
  
  string = selective_tweet_shortener(tweet)
  
  if string.length > 140
    string = string[0..139]
    string[0..137].gsub(/\s\w+\s*$/,'...')
  end
  
  string
  
end