# Write your code here.
require 'pry'
# Define dictionary method
# Method takes a string and it's corresponding value from a hash of words
def dictionary(word)
  words = {
    "hello": 'hi',
    "to": '2',
    "two": '2', 
    "too": '2',
    "for": '4',
    "be": 'b',
    "you": 'u',
    "at": '@',
    "and": '&'
  }
  words[word.downcase.to_sym]
end

def word_substituter(str)
  new_str_arr = []
  str.split.each do |word|
    dictionary(word) ? new_str_arr << dictionary(word) : new_str_arr << word
  end
  new_str_arr.join(" ")
end


def bulk_tweet_shortener(arr)
  arr.each {|item| puts word_substituter(item)}
end

def selective_tweet_shortener(str)
  str.length > 140 ? word_substituter(str) : str
end

def shortened_tweet_truncator(str)
  new_str = word_substituter(str)
  if new_str.length > 140
    new_str = str[0..136] + "..."
  end
  new_str
end
