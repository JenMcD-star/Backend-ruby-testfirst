class Book
# write your code here
attr_accessor :title

def initialize
  @title = title
end

def title=(title)
  excluded_words = ["the", "a", "an", "and", "in", "of", "on"]
  #map will check each word in each title to see if it has an excluded words. If it does then don't capitalize. 
  #If not then capitalize it 
  titles = title.split(' ').map { |word|
  excluded_words.include?(word) ? word : word.capitalize
  }.join(' ')
  @title = titles.chr.upcase + titles[1..]
end

end





=begin def initalize 
    @title = title
end


def title=(book)
    titleArray = []
    excluded_words = ["the", "a", "an", "and", "in", "of", "on"]
    array = book.split(" ")
    
array.each do |word|  
    if word == ("i")
        titleArray.push(word.capitalize)
    
    elsif excluded_words.include?(word)
        titleArray.push(word)

    elsif  word == array[-1] 
        titleArray.push(word.capitalize ) 
     
    else
         titleArray.push(word.capitalize )   
     end
     end
     
     first = titleArray.first.capitalize
     titleArray[0] = first
     titleArray = titleArray.join (" ")

    @title = titleArray
end

end
=end