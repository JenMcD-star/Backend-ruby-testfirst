#write your code here
def add(a, b)
a + b
end

def subtract(a, b)
a - b
end

def sum (array1)
    sum1 = array1.sum

end

#bonus work below

def loopSum(array)
    i = 0;      
    sum = 0;      
    
 while i < array.length    
    sum = sum + array[i]    
    i +=1        
 end          

 return sum 
end


#multiply which multiplies two numbers together
def multiply(array)
    array.inject(:*)

end

#power which raises one number to the power of another number
def power(a, b)
    i = 0
    sum = 0
    while i <= b
    sum += a * a
        i+= 1
    end
    return sum
end

puts power(4, 3)

#[factorial](http://en.wikipedia.org/wiki/Factorial) (check Wikipedia if you forgot your high school math).

def factorial(n)
    total = 1
    (1..n).each do |n|
      total *= n   
    end
    total
  end


