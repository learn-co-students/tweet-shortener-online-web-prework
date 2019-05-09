def dictionary
  dict = {
    "hello" => 'hi',
    "to"=> "2",
    "too"=> "2",
    "two" => "2",
    "for"=>"4",
    "four" => "4",
    "For"=>"4",
    "Four" => "4",
    'be' => "b",
    'you'=> "u",
    "at" =>"@",
    "and" => "&",
    }
end

def word_substituter(tweet)
  words = tweet.split(" ")
  words.map do |word|
    dictionary.map do |k, v|
      if word = k
        word.replace(value)
      end
    end
  end
  words.join(" ")
end
