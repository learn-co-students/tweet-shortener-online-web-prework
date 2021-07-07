# Write your code here.
def dictionary (str)
  dic =  {"hello" => "hi",
          "to" => "2",
					"two" => "2",
					"too" => "2",
          "for" => "4",
					"four" => "4",
          "For" => "4",
          "be" => "b",
          "you" => "u",
          "at" => "@",
          "and" => "&"
         }
	dic.each do |key,value|
		if str == key
			str = value
			# puts "#{value}"
		end
	end
	str
end

def word_substituter(str)
  arr = []
	str = str.split()
  str.each do |word|
		arr << dictionary(word)
	end
  arr.join(" ")
end

def bulk_tweet_shortener(arg)
	arg.each do |tweet|
		puts "#{word_substituter(tweet)}"
	end
end

def selective_tweet_shortener(arg)
	if arg.length >140
		str = word_substituter(arg)
	else
		str = arg
	end
  str
end

def shortened_tweet_truncator(arg)
	newstr = selective_tweet_shortener(arg)
	newstr[0..139]
end
