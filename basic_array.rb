# Return the sum of all numbers in a given array.
# NOTE: Do not use any built-in language functions that do this automatically for you.
# Input: [1, 2, 3, 4]
# Output: 10

# define sum = 0  loop through array. each loop will produce sum += array[index]

def total(array)
  sum = 0
  array.map { |n| sum += n }
  return sum
end
p total([1, 2, 3, 4])

# Given an array of numbers, return a new array that contains all numbers from the original array that are less than 100.

# Input: [99, 101, 88, 4, 2000, 50]
# Output: [99, 88, 4, 50]

# create new array( less = [] ). loop through array( numbers = [99, 101, 88, 4, 2000, 50] ) if array[index] < 100, shovel into less_than. 

def less_than(array)
  less = []
  array.map {|a| less << a if a < 100}
  return less
end
p less_than([99, 101, 88, 4, 2000, 50, 1])

# Given an array of numbers, return a new array whose values are the original array’s value doubled.

# Input: [4, 2, 5, 99, -4]
# Output: [8, 4, 10, 198, -8]

# new array (new_value = []) loop through array([4, 2, 5, 99, -4]) multiply array[index] by 2 and shovel that value into new_value array 

def double(array)
  new_value = []
  array.map { |a| new_value << a * 2 }
  return new_value
end
p double([4, 2, 5, 99, -4])

# Return the greatest value from an array of numbers.

# Input: [5, 17, -4, 20, 12]
# Output: 20

# create variable that is array[0] ( greatest = array[0] ) loop through array. if array > greatest, greatest then takes on array's value. 

def highest_num(array)
  greatest = array[0]
  array.map { |a| greatest = a if a > greatest}
  return greatest
end
p highest_num([5, 17, -4, 20, 12])

# Given an array of numbers, return the product of all the numbers.

# Input: [1, 2, 3, 4]
# Output: 24

# create variable to multiply array indexs to ( product = 1 ) loop through array. each loop product = product * array[index] 

def product_of(array)
  variable = 1
  array.map { |a| variable = variable * a }
  return variable
end
p product_of([1, 2, 3, 4])

# Given an array, return a new array that contains the original array’s values in reverse.

# Input: [1, 2, 3, 4, 5]
# Output: [5, 4, 3, 2, 1]

# create new array ( backwards = [] ) with while loop (index >= 0 ), go through array starting from last index ( index = array.length - 1 ) shovel array[index] into backwards. index = index - 1

def reverse(array)
  backwards = []
  index = array.length - 1
  while index >= 0
    backwards << array[index]
    index -= 1
  end
  return backwards
end
p reverse([1, 2, 3, 4, 5])

# SKIP IT
# Given an array of numbers, return a new array in which only select numbers from the original array are included, based on the following details:
# The new array should always start with the first number from the original array. The next number that should be included depends on what the first number is. The first number dictates how many spaces to the right the computer should move to pick the next number. For example, if the first number is 2, then the next number that the computer should select would be two spaces to the right. This number gets added to the new array. If this next number happens to be a 4, then the next number after that is the one four spaces to the right. And so on and so forth until the end of the array is reached.
# Input:
# [2, 1, 3, 2, 5, 1, 2, 6, 2, 7, 1, 5, 6, 3, 2, 6, 2, 1, 2]
# Output:
# [2, 3, 1, 2, 2, 1, 5, 2, 2]

# create new array (select_numbers = [] ) loop through input array. 
# shovel 2 from input to select_numbers array. define next array[index] to shovel in based on what the value of index += array[idex] is

def select(array)
  select_numbers = []
  index = 0
  while index < array.length
    select_numbers << array[index]
    index += array[index]
  end
  return select_numbers
end
p select([2, 1, 3, 2, 5, 1, 2, 6, 2, 7, 1, 5, 6, 3, 2, 6, 2, 1, 2])

