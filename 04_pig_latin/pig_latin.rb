#write your code here

def rules(string)
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
        puts string
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