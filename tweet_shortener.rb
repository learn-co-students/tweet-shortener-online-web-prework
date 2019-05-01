# Write your code here.

<<<<<<< HEAD
def dictionary_hash
dictionary = {
    Hello: "hi",
    To:  "2",
    Two: "2",
    Too: "2",
    For: "4",
    Four: "4",
    Be: "b",
    You: "u",
    At: "@",
    And: "&"
  }
 dictionary
end

def word_substituter(tweet)    
  tw_a = tweet.split(" ")
  tw_a.each_with_index do |x, i|
    dictionary_hash.each do |k, v|
    if x == k.to_s.downcase || x == k.to_s
      tw_a.delete_at(i)
      tw_a.insert(i,v)
     end
  end 
  end
  tweet = tw_a.join(" ")
  tweet
end


def bulk_tweet_shortener(arr)  
  new_arr = []
  arr.each_with_index do |k, i|  
    new_arr << word_substituter(k)
    
    puts new_arr[i]
    
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
    if tweet.length > 140
    word_substituter(tweet)
    #uses ... because it starts at 0 index so 140 is actually the 141 character
    tweet[0...140]
  else 
    tweet
  end 
=======
def word_substituter(tweet)  
  
  tw_a = tweet.split(" ")
  keys = dictionary_hash.keys.to_s.downcase
  #puts keys
  index = []
  tw_a.each_with_index do |x, i|
    dictionary_hash.each do |k, v|
    if x == k.to_s.downcase || x == k.to_s
      #puts x
      index << i
      tw_a.delete_at(i)
      tw_a.insert(i,v)
      
     end
   
  end 
  end
  puts tw_a.join(" ")
end

def word_substituter(string)  
  

end 


def bulk_tweet_shortener(arr)  
  

end 

def selective_tweet_shortener(tweet)  
  

end 

def shortened_tweet_truncator(tweet)  
  

>>>>>>> 81fde3a8b353e6a9aa81fd3dedee12fa8cd672b6
end 