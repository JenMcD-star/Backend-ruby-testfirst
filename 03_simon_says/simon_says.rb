#write your code here
def echo(string)
 return string
end

def shout(string)
 return string.upcase
end

def repeat(string, num = 2) 
    i = 2
    sentence = string

    while num >= i
     sentence += " " + string
    i += 1
    end
    return sentence
end


def start_of_word(string, num)
    array = []
    string.split("").each {|letter| array.push(letter)}
    return array.take(num).join("")
end


def first_word(string)
 string.split(" ").first
end

def titleize(string)
    capArray = []

    array = string.split(" ")
       array.each do |word|  
        
       if  word == array[-1] 
       capArray.push(word.capitalize ) 

       elsif word.length < 5 
           capArray.push(word)

       else
        capArray.push(word.capitalize )   
    end
    end

    first = capArray.first.capitalize
    capArray[0] = first
    return capArray.join (" ")

end