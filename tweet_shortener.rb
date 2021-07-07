def word_substituter(string)
arr = string.split(" ")
arr.each_with_index {
  |word, index| if dictionary.keys.to_a.include?(word.downcase)
    arr[index] = dictionary[word.downcase]
    arr
  end
}
arr.join(" ")
end


def dictionary
  dictionary = {
  "hello" => 'hi',
  "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  "be" => 'b',
  "you" => 'u',
  "at" => "@",
  "and" => "&"
  }
end

def bulk_tweet_shortener(arr)
  new_t = []
  arr.each {
    |tweet| puts word_substituter(tweet)
  }
end

def selective_tweet_shortener(a)
  i = a.length
     if i > 140
      word_substituter(a)
    else a
    end
end

def shortened_tweet_truncator(a)
  if selective_tweet_shortener(a).length > 140
    i = selective_tweet_shortener(a)
    new_i = i[1..137] + "..."
    new_i
  else  selective_tweet_shortener(a)
  end
end
