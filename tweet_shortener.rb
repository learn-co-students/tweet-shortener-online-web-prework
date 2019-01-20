require 'pry'

def dictionary
  dictionary = {
    "hello" => "hi",
    "too" => "to",
    "two" => "2",
    "to" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end


def word_substituter(string_in)
  string_ary = string_in.split(" ")
  dictionary.each do |key, value|
    string_ary.each do |index|
      if index.downcase == key
      index.gsub!(index, value)
      end
    end
  end
  string_in = string_ary.join(" ")
end


# def word_substituter(string_in)
#   string_ary = string_in.split(" ")
#   string_ary.each do |index|
#     if dictionary.keys.include? (index.downcase)
#       dictionary.each do |key, value|
#         if index.downcase == key
#           index.gsub!(index, value)
#         end
#       end
#     end
#   end
#   string_in = string_ary.join(" ")
# end


def bulk_tweet_shortener(tweets)
  tweets.each {|index| puts word_substituter(index)}
end


def selective_tweet_shortener(tweet)
binding.pry
end
