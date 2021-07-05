# Write your code here.
def dictionary
  {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4",
    "four" => '4', 'be' => 'b', 'you' => 'u', "at" => "@", "and" => "&"}
end


def word_substituter(tweet)
  split_tweet = tweet.split

  split_tweet.each_with_index do |word, index|
    dictionary.each do |to_replace, replacement|
      if word == to_replace
        split_tweet[index] = replacement
      end
    end
  end
split_tweet.join(" ")

end




tweet = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

puts word_substituter(tweet)
