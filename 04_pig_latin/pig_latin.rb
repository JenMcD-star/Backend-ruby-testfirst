def translate(string)
    words = string.split(' ')
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    twoLetters = ['qu','Qu', 'ch', 'Ch', 'Br', 'br', 'Th', 'th', 'Bl', 'bl', 'Cr','cr', 'St', 'st', 'Tw', 'tw', 'Ph','ph', 'Sh', 'sh', 'Wh', 'wh','KN' ,'kn']
    threeLetters = ['sch', 'Sch', 'thr', 'Thr','squ','Squ', 'spr','Spr', 'scr', 'Scr', 'spl', 'Spl' ]
    punctuation = ["!", "?","."]
    upper = ('A'..'Z') 


      #map will check each word to see if it starts with a vowel,
    words.map { |word|
        if vowels.include?(word[0])
            sentence = word + 'ay'
            punctuation.include?(word[-1])? sentence = word[0..-2] + 'ay' + word[-1] : sentence
            upper.include?(word[0])? (word[0].downcase; sentence.capitalize) : sentence
          
          
    #see if the first 3 letter match the three letter exceptions
        elsif threeLetters.include?(word[(0..2)])
            puts word
          sentence = word[(3..-1)]+word[(0..2)]+ 'ay'
          punctuation.include?(word[-1])? sentence = word[3..-2] + word[0..3] + 'ay' + word[-1] : sentence
          upper.include?(word[0])? (word[0].downcase; sentence.capitalize) : sentence



    #see if the first 2 letter match the two letter exceptions 
        elsif twoLetters.include?(word[(0..1)])
          sentence = word[(2..-1)]+word[(0..1)]+'ay'
          punctuation.include?(word[-1])? sentence = word[2..-2] + word[0..1] + 'ay' + word[-1] : sentence
          



    #If doesn't meet any exceptions then it will take the word without the first letter, add the first letter then ay.
        else
          sentence = word[(1..-1)]+word[0]+'ay'
          punctuation.include?(word[-1])? sentence = word[1..-2] + word[0] + 'ay' + word[-1] : sentence
          upper.include?(word[0])? (word[0].downcase; sentence = sentence.capitalize) : sentence

        end
    }.join(' ') #map returns an array so change it to a string

end








