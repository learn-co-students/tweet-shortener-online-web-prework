# Write your code here.
#require "pry"
def dictionary
  dictionary_hash ={"hello"=>"hi","to"=>"2","two"=>"2","too"=>"2","for"=>"4","four"=>"4",
  "be"=>"b","you"=>"u","at"=>"@","and"=>"&"}
end

def word_substituter(tweet)
    tweet.split.collect do |word| #calls on each word (need split to check each separately)
        if dictionary.keys.include?(word.downcase)#if word is in dictionary, then
             word = dictionary[word.downcase]#the word will equal the dictionary value we assigned
        else
            word
        end
    end.join(" ") #convert back to string

end
def bulk_tweet_shortener(tweets)
    tweets.each do |tweet|
        puts word_substituter(tweet)
    end
end
def selective_tweet_shortener(tweet)
    if tweet.length > 140
        word_substituter(tweet)
    else
        tweet
    end
end
def shortened_tweet_truncator(tweet)
    if word_substituter(tweet).length > 140
        return word_substituter(tweet)[0..136] + "..."
    else
        tweet
    end
end
