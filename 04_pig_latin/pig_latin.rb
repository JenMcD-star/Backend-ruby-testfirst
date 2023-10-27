#write your code here

def translate(string)
    words = string.split(' ')
    vowels = ['a', 'e', 'i', 'o', 'u']
    twoLetters = ['qu', 'ch', 'br', 'th', 'bl', 'cr', 'st', 'tw', 'ph', 'sh', 'wh','kn']
    threeLetters = ['sch', 'thr', 'squ', 'spr', 'scr', 'spl' ]


      #map will check each word to see if it starts with a vowel,
    words.map { |word|
        if vowels.include?(word[0])
          word = word + 'ay'

    #see if the first 3 letter match the three letter exceptions
        elsif threeLetters.include?(word[(0..2)])
          word = word[(3..-1)]+word[(0..2)]+ 'ay'

    #see if the first 2 letter match the two letter exceptions 
        elsif twoLetters.include?(word[(0..1)])
          word = word[(2..-1)]+word[(0..1)]+'ay'

    #If doesn't meet any exceptions then it will take the word without the first letter, add the first letter then ay.
        else
          word[(1..-1)]+word[0]+'ay'
        end
    }.join(' ') #map returns an array so change it to a string

end

 


=begin def rules(string)
    string = string.split("")
    vowels = ["a", "A", "e", "E", "i", "I", "o","O", "u", "U", "y" "Y"]

    if vowels.include?(string[0])
        string.push("ay")
        string.join("")
    
    elsif string.slice(0, 2).join("").include?("qu")
        firstCon = string.shift(2)
        string.push(firstCon, "ay")
        string.join("")
    
    elsif string.slice(0, 3).join("") === "sch"  || string.slice(0, 3).join("").include?("qu")
        firstCon = string.shift(3)
        string.push(firstCon, "ay")
        string.join("")

    elsif vowels.include?(string[0]) == false && vowels.include?(string[1]) == false && vowels.include?(string[2]) == false
        firstCon = string.shift(3)
        string.push(firstCon, "ay")
        string.join("")

    elsif vowels.include?(string[0]) == false && vowels.include?(string[1]) == false
        firstCon = string.shift(2)
        string.push(firstCon, "ay")
        string.join("")

    else 
        firstCon = string.shift()
        string.push(firstCon, "ay")
        string.join("")
    end 
end



def translate(string)
    multiples = []
    if string.include?(" ")
        string =  string.split(" ")
        string.each do |word|
           multiples.push(rules(word))
        end
    return multiples.join(" ")
    
    else
        return rules(string) 
end
end
=end