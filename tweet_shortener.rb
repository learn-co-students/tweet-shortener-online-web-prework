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

# def word_substituter(string_in)
#   string_ary = string_in.split(" ")
#   new_sentence = []
#   string_ary.each do |index|
#     dictionary.each do |key, value|
#       if index.upcase == key.upcase
#         index.gsub!(key, value)
#       end
#     end
#     binding.pry
#   end
#   string_in = string_ary.join(" ")
# end


def word_substituter(string_in)
  string_ary = string_in.split(" ")
  new_sentence = []
  dictionary.each do |key, value|
    string_ary.each do |index|
      index == index.capitalize ? index = index.downcase : index
      if index.downcase == key
        index.gsub!(key, value)
      end
    end
  end
  string_in = string_ary.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.each {|index| puts word_substituter(index)}
end
