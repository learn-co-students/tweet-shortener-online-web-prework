require 'pry'

def dictionary
  substitutes = {
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
  string.split.collect do |w|
    if dictionary.has_key?(w.downcase)
      w = dictionary[w.downcase]
    else
      w
    end
  end.join(" ")
end

def bulk_tweet_shortener(array)
  array.each {|a| puts word_substituter(a)}
end

def selective_tweet_shortener(string)
  string.length > 140 ? word_substituter(string) : string
end


def shortened_tweet_truncator(string)
  string.length > 140 ? "#{string[0...137]}..." : string
end
