require 'pry'

dictionary = {
  "hello" => "hi",
  "to, two, too" => '2',
  "for, four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"
  }

tweet_one = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
#tweets = {
  #tweet_one:"Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!",
#  tweet_two: "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?",
#  tweet_three: "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real.",
#  tweet_four: "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!",
#  tweet_five: "New game. Middle aged tweet followed by #youngPeopleHashTag Example: Gotta get my colonoscopy and mammogram soon. Prevention is key! #swag"
#}
def word_substituter (tweet_one, dictionary)
  tweet_array = tweet_one.split(" ")

  tweet_array.map do |word|
    if word == "Hey"
      "hi"
    else
      word
    end
  end

end
