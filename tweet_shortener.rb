# Write your code here.
tweet = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
def dictionary
   
     convert = {
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

#my shorten tweets method
def word_substituter(tweet)
 tweet.split.map { |word| 
 dictionary[word.downcase] || word }.join(" ")
  end
 end
 
 def bulk_tweet_shortener(tweet)
   tweet.map do |phrase|
 puts word_substituter(phrase)
  end
 end
 
 def selective_tweet_shortener(tweet)
   tweet.split(" ").map do |phrase|
     if phrase.length > 140
       word_substituter(phrase)
       elsif 
       phrase.length < 140
       phrase
     end
   end
  end
 #end
 
 def shortened_tweet_truncator(tweet)
   tweet.split(" ").map do |phrase|
     if phrase.length > 140 
       word_substituter(phrase) [0 ..140]
       + "..."
     else
       phrase
      end
    end.join(" ") 
  end
     