# When done, submit this entire file to the autograder.

# Part 1

#Q0 ===============================
def sum arr
  sum_arr = 0
  # if array is empty 
  if arr.length == 0 
    sum_arr = 0
  # otherwise 
  else
    for value in arr
      sum_arr += value
    end
  end
  
  return sum_arr
  
end


# Q1 ===============================
def max_2_sum arr
  
  sum2 = 0
  #(1) If the array is empty
  if arr.length == 0
    sum2 = 0
  #(2) If the array has a single value
  elsif arr.length == 1
    arr.each do |val|
      sum2 = val
    end
  #(3) Otherwise 
  else 
    # Initialize with the first two values 
    if (arr[0] >= arr[1])
      max1 = arr[0]
      max2 = arr[1]
    else
      max1 = arr[1]
      max2 = arr[0]
    end
    
    # Find the two maximum values
    for i in 2..(arr.length-1)
      temp = arr[i]
      if temp >= max1
      # Swap two values 
        max1 = temp
        max2 = max1
      elsif temp <= max2
      # As it is 
        max1 = max1
        max2 = max2
      else
        max1 = max1 
        max2 = temp
      end
    end
    
    sum2 = max1 + max2
    
  end

  return sum2 

end


#Q3 ===============================
def sum_to_n? arr, n
  # false if array size is either 0 or 1
  if arr.length == 0
    return false
  elsif arr.length == 1
    return false
  else 
    # Use n = a + b <=> b = n - a scheme
    for i in 0..arr.length-2
      a = arr[i]
      for j in i+1..arr.length-1
        b = arr[j]
        
        if (b == n - a)
          return true
        end
      end
    end
    return false 
  end

end


# Part 2 ============================

#Q1 =================================
def hello(name)
  return ("Hello, " + name)
end


#Q2 ================================
def starts_with_consonant? s

  # val1 checks alphabetic/non-alphabetic
  # val2 checks consonants/vowels
  val1 = /[[:alpha:]]/.match(s[0])
  val2 = /[aioueAIOUE]/.match(s[0])
  
  if val1 == nil 
    output = false 
  elsif val2 == nil 
    output = true
  else
    output = false
  end
    
  return output
  
end


#Q3 ================================
def binary_multiple_of_4? s
  
  # Check whether binary/non-binary 
  val1 = /[^01]/.match(s)
  
  # binary
  if val1 == nil
    
    if s.empty? 
      output = false 
    else
      # Convert the string into integer 
      n = Integer(("0b" + s))
      if (n % 4) == 0
        output = true
      else
        output = false
      end
    end
  # non-binary  
  else 
    output = false
  end
  
  return output
  
end


# Part 3 ============================

# Task 1: Define the class 
class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    # Task2: raise ArgumentError
    if isbn.empty?
      raise ArgumentError, 'ISBN is an empty string'
    end
    if price <= 0
      raise ArgumentError, 'Price is less than or equal to zero'
    end
    @isbn = isbn
    @price = price
  end
  
  
  
  
  
  
end


