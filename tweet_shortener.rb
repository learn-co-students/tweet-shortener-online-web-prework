# Write your code here.

$words_list = ['hello', 'to', 'two', 'too', 'for', 'four', 'be', 'you', 'at', 'and', 'Hello', 'To', 'Two', 'Too', 'For', 'Four', 'Be', 'You', 'At', 'And']

def dictionary(word)
  words = [
    {"hello" => 'hi'},
    {"to" => 2},
    {"two" => 2},
    {"too" => 2},
    {"for" => 4},
    {"four" => 4},
    {"be" => 'b'},
    {"you" => 'u'},
    {"at" => '@'},
    {"and" => '&'},
    {"Hello" => 'hi'},
    {"To" => 2},
    {"Two" => 2},
    {"Too" => 2},
    {"For" => 4},
    {"Four" => 4},
    {"Be" => 'b'},
    {"You" => 'u'},
    {"At" => '@'},
    {"And" => '&'}
  ] 
  
  if $words_list.include?(word)
    index = $words_list.index(word)
    return words[index][word]
  end
end 

def word_substituter(string)
  words_arr = string.split(' ')
  words_arr.each do |x|
    if $words_list.include?(x)
      index = words_arr.index(x)
      words_arr[index] = dictionary(x)
    end 
  end
  return words_arr.join(' ')
end 

def bulk_tweet_shortener(tweets_array) 
  tweets_array.each do |tweet|
    puts word_substituter(tweet)
  end 
end 

def selective_tweet_shortener(tweet)
  if tweet.length > 140 
    return word_substituter(tweet)
  else 
    return tweet
  end
end 

def shortened_tweet_truncator(tweet)
  output = ''
  if word_substituter(tweet).length < 140
    output = word_substituter(tweet)
  elsif word_substituter(tweet).length >= 140
    output = word_substituter(tweet).slice(0..139)
  end 
  output
end 