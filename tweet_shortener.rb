
require 'pry'# Write your code here.
def dictionary #(hashs)
hashs = { "hello" => "hi","to"=> "2",
"two"=> "2",
"too" => "2",
"for four" => "4",
"be" => "b",
"you"=> "u",
"at" => "@",
"and" => "&"
}
end

def  word_substituter (string)
  words=dictionary.keys
arraytw =string.split(" ")

#if words.include?(string) == true
arraytw.each do  |word|
   words.include?(word)
  word.gsub(dictionary)
# delete_if  iclude?() .select

end
end
