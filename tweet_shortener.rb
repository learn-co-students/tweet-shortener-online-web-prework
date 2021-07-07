# Write your code here.

# def word_substituter(string)
#   dictionary = {
#     :hello => "hi",
#     :to => "2",
#     :two => "2",
#     :too => "2",
#     :for => "4",
#     :four => "4",
#     :be => "b",
#     :you => "u",
#     :at => "@",
#     :and => "&"
#     }
    

#   #array = string.tr("'","").downcase.split.to_a 
#   array = string.split.to_a 

#   #dictionary key
#     str_keys = dictionary.keys.join(" ")
#     arr_keys = dictionary.keys.join(" ").split

#   #dictionary key and value array
#     arr_dic = dictionary.map {|key,value| [key.to_s,value]}

#   array.each do |arr|
#       if arr.downcase == arr_keys[0]
#         arr.replace(arr_dic[0][1])

#       elsif arr.downcase == arr_keys[1]
#         arr.replace(arr_dic[1][1])
      
#       elsif arr.downcase == arr_keys[2]
#         arr.replace(arr_dic[2][1])
      
#       elsif arr.downcase == arr_keys[3]
#         arr.replace(arr_dic[3][1])
      
#       elsif arr.downcase == arr_keys[4]
#         arr.replace(arr_dic[4][1])
      
#       elsif arr.downcase == arr_keys[5]
#         arr.replace(arr_dic[5][1])
      
#       elsif arr.downcase == arr_keys[6]
#         arr.replace(arr_dic[6][1])
      
#       elsif arr.downcase == arr_keys[7]
#         arr.replace(arr_dic[7][1])
      
#       elsif arr.downcase == arr_keys[8]
#         arr.replace(arr_dic[8][1])
      
#       elsif arr.downcase == arr_keys[9]
#         arr.replace(arr_dic[9][1])
       
#       elsif arr.downcase == arr_keys[10]
#         arr.replace(arr_dic[10][1])
#       end 
#   end
#   array.join(" ")
# end


# def bulk_tweet_shortener(array)
#   multi_arr = array.each_slice(1).to_a 
#   multi_arr.map do |arr|
#     to_str = arr.join(" ")
#     puts word_substituter(to_str)
#   end
# end


# def selective_tweet_shortener(string)
#     if string.size > 140 
#       word_substituter(string) 
#     else
#       string
#     end
# end

# def shortened_tweet_truncator(string)
#   if string.size > 140
#     string[0...140]
#   else
#     string
#   end
# end


#Refactor
def dictionary
  dictionary = {
    :hello => "hi",
    :to => "2",
    :two => "2",
    :too => "2",
    :for => "4",
    :four => "4",
    :be => "b",
    :you => "u",
    :at => "@",
    :and => "&"
  }
end 

def word_substituter(str_tweet)
  #iterate string(split to word)
  str_tweet.split.each do |word| 
    #iterate dictionary hash
    dictionary.each do |regular, short|
      #key(regular) - symbol to string
      if word.downcase == regular.to_s
        word.replace(short)
        str_tweet
      end
    end
  end.join(" ")  #back to string
end

def bulk_tweet_shortener(arr_tweet) 
  arr_tweet.each do |str_tweet|
    puts word_substituter(str_tweet)
  end
end

def selective_tweet_shortener(str_tweet)
  if str_tweet.length > 140 
    word_substituter(str_tweet) 
  else 
    str_tweet
  end 
end

def shortened_tweet_truncator(str_tweet)
   word_substituter(str_tweet) 
   if str_tweet.length > 140
    str_tweet[0...140]  
   else 
     str_tweet
   end
end