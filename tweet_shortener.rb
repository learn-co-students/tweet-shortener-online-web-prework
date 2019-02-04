require 'pry'
def dictionary
 
  dictionary = {  "hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u",  "at" => "@", "and" => "&"}

end

def word_substituter(tweets)
  tweets_ary = tweets.split(" ")
  dictionary
  tweets_ary.each.with_index do |word, index|
    if dictionary.keys.join(" ").include?(word)
      tweets_ary[index] = dictionary[word]
    end
  end
  tweets_ary.join(" ")
end