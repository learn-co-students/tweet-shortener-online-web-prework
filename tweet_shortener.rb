def dictionary(word)
subs = {
    "hello" =>  'hi', "to" => '2', "two" => '2', "too" => '2', "for" => '4', "four" => '4', "be" => 'b', "you" => 'u', "at" => '@',
	"and" => '&', "Hello" => 'Hi', "To" => '2', "Two" => '2', "Too" => '2', "For" => '4', "Four" => '4', "Be" => 'B', "You" => 'U',
	"At" => '@', "And" => '&'
}
	if subs[word]
		return subs[word]
	else
		return word
	end
end

def word_substituter(tweet)
	shortened = []
	tweet.split.each do |word|
		shortened << dictionary(word)
	end
	shortened.join(' ')
end

def bulk_tweet_shortener(tweets)
	tweets.each do |tweet|
		puts word_substituter(tweet)
	end
end

def selective_tweet_shortener(tweet)
	if tweet.length > 140
		return word_substituter(tweet)
	else
		return tweet
	end
end

def shortened_tweet_truncator(tweet)
	return tweet if tweet.length <= 140
	return word_substituter(tweet) if word_substituter(tweet).length <= 140
	word_substituter(tweet)[0..136] + '...'
end
