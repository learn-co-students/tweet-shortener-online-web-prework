# Write your code here.
dictionary = {
  "hello" => 'hi',
  "be" => 'b',
  "you" => 'u',
  "at" => '@',
  "and" => '&',
  "to" =>'2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4'
}

def word_substituter(tweet, dictionary)
  wrking_grnd = tweet.split(" ")
  rtnd_wrds = ''
  wrking_grnd.each do |wrd|
    #notes
    #iterate through the code
    #push the word to the new array if its not in the dic
    #otherwise, make the substitution
    if dictionary.has_key?wrd
      wrd = dictionary[wrd]
     rtnd_wrds << wrd+" "
    else
     rtnd_wrds << wrd
    end
  end
   rtnd_wrds
  end #end the collection of the new array
