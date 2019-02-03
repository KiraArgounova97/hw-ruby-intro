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
  # YOUR CODE HERE
end







# Part 2
def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
