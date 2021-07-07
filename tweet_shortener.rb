# Write your code here.
def dictionary
  subs = {
    "hello" => "hi",
    "Hello" => "hi",
    "to" => "2",
    "To" => "2",
    "two" => "2",
    "Two" => "2",
    "too" => "2",
    "Too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "Four" => "4",
    "be" => "b",
    "Be" => "b",
    "you" => "u",
    "You" => "u",
    "at" => "@",
    "At" => "@",
    "and" => "&",
    "And" => "&"
  }
end

def word_substituter(input)
  input_a = input.split(" ")
  output_a = []
  input_a.map do |val|
    if dictionary.has_key?(val)
      val = dictionary[val]
      output_a << val
    else 
      output_a << val
    end
  end
  output_s = output_a.join(" ")
end

def bulk_tweet_shortener(input_a)
  input_a.each do |val|
    puts word_substituter(val)
  end
end

def selective_tweet_shortener(input)
  if input.length > 140 
    input = word_substituter(input)
  end
  input
end

def shortened_tweet_truncator(input)
  if input.length > 140
    input = input[0..136] + "..."
  end
  input
end

word_substituter("Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")