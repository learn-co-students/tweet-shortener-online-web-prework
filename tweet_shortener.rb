require 'pry'
# Write your code here.
def dictionary
{
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
  arr = string.split(" ")
  arr2 = arr.collect do |i|
    if dictionary.keys.include?(i.downcase)
      dictionary[i.downcase]
    else
      i
    end
  end
  arr2.join(" ")
end

def bulk_tweet_shortener(array)
  array.each {|i| puts word_substituter(i)}
end

def selective_tweet_shortener(string)
  if string.size > 140
    word_substituter(string)
  else
    string
  end
end

def shortened_tweet_truncator(string)
  if string.size > 140
    word_substituter(string)
    string[0..136] + "..."
  else
    string
  end
end