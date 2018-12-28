require 'pry'# Write your code here.
def dictionary #(hashs)
hashs = { "hello" => "hi","to two too" => "2","for four" => "4",
"be" => "b",
"you"=> "u",
"at" => "@",
"and" => "&"
}
end

def  word_substituter (string)
  words=dictionary.keys.join("  ")
binding.pry

  string.split.each do |change |
  change.include?(words)
#binding.pry

end
end
