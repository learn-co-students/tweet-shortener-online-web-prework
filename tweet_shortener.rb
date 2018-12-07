



def word_substituter(tweet)
  answer = ""
  dictionary = {"Hey"=> "hi", "to"=> "2", "two"=> "2", "too"=> "2", "for"=> "4", "four"=> "4", "be"=> "b", "you"=> "u", "at"=> "@", "and"=> "&"}
tweet_array = tweet.split(" ")
# tweet_array << tweet.to_a
  tweet_array.map { |word|
    dictionary.each do |k,v|
      if word == k
        puts "k = #{k}"
        puts "word = #{word}"
        v
        break
      end
    end
}
  tweet_array.each{ |word| answer << " #{word}"}
  answer[1..-1]
  end
end
