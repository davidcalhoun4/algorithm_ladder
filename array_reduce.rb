#  1. Start with an array of numbers and compute the sum of all the numbers.
#     For example, [5, 10, 8, 3] becomes 26.

numbers = [5, 10, 8, 3]
index = 0
sum = 0
while index <= numbers.length
  sum = sum + numbers[index].to_i
  index += 1
end
puts sum 

#  2. Start with an array of strings and combine them all into a single string.
#     For example, ["volleyball", "basketball", "badminton"] becomes "volleyballbasketballbadminton".

# loop through array. shovel array[index] into empty string. increse index
def combine(array)
  new_string = "" # "volleyballbasketballbadmiton"
  index = 0
  while index < array.length
    new_string << array[index] # 0-volleyball 1-basketball 2-badmiton
    index += 1
  end
  return new_string
end
p combine(["volleyball", "basketball", "badminton"])

#  3. Start with an array of hashes and compute the sum of the prices (from the :price key).
#     For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes 105.

# loop through array .each do  define variable = 0  grab price key array[0][:price] and add that to variable

def total(array)
  variable = 0
  index = 0
  while index < array.length
    variable = variable + array[index][:price]
    index = index + 1
  end
  return variable
end
p total([{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}])

#  4. Start with an array of numbers and compute the the minumum number.
#     For example, [5, 10, 8, 3, 9] becomes 3.

# loop through array while loop  index = 0  lowest = array[index] if array[index] < lowest  lowest = array[index]

def find_lowest(array)
  index = 0
  lowest = array[index]
  while index < array.length # index = 3
    if array[index] < lowest # if 9 < 5
      lowest = array[index] # lowest = 3
    end
    index += 1
  end
  return lowest
end
p find_lowest([5, 10, 8, 3, 9])



#  5. Start with an array of strings and compute the total length of all the strings.
#     For example, ["volleyball", "basketball", "badminton"] becomes 29.

# loop through array  define variable total = 0  add array[index].length to total

def total_characters(array)
  index = 0
  total = 0
  while index < array.length # index = 0
    total = total + array[index].length # total + volleyball(10) 
    index = index + 1
  end
  return total
end
p total_characters(["volleyball", "basketball", "badminton"])


#  6. Start with an array of hashes and find the hash with the lowest price (from the :price key).
#     For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes {name: "pencil", price: 1}.

# loop through array  index = 0  lowest_price = array[index][:price]  
# if array[index] < lowest_price  lowest_price = array[index]  index += 1

def lowest_price(array)
  index = 0
  lowest_price = array[index]
  while index < array.length              # index = 2
    if array[index][:price] < lowest_price[:price]       # if 4 < 100
      lowest_price = array[index]         # lowest = 4
    end
    index += 1
  end
  return lowest_price
end
p lowest_price([{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}])

#  7. Start with an array of numbers and compute product of all the numbers.
#     For example, [5, 10, 8, 3] becomes 1200.

# loop through array w/ while loop  index = 0  product = 1  
# product = product * array[index]  index += 1

def find_product(array)
  index = 0
  product = 1
  while index < array.length            # index = 0, 1, 2, 3
    product = product * array[index]    # product = 5, 50, 400, 1200
    index += 1
  end
  return product
end
p find_product([5, 10, 8, 3])

#  8. Start with an array of strings and combine them all into a single string, separated by dashes.
#     For example, ["volleyball", "basketball", "badminton"] becomes "-volleyball-basketball-badminton-".

# loop w/ while loop  index = 0  define empty string, string = ""
# string << array[index] + "-"  index += 1

def combine(array)
  index = 0
  string = ""
  while index < array.length
    string << array[index] + "-"
    index += 1
  end
  return string
end
p combine(["volleyball", "basketball", "badminton"])

#  9. Start with an array of hashes and find the hash with the shortest name (from the :name key).
#     For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes {name: "book", price: 4}.

# loop through array w/ while loop  index = 0  shortest_name = array[0]
# if array[index][:name].length < shortest_name[:name].length 
# shortest_name = array[index]  index += 1

def find_shortest_name(array)
  index = 0
  shortest_name = array[0]
  while index < array.length
    if array[index][:name].length < shortest_name[:name].length
      shortest_name = array[index]
    end
    index += 1
  end
  return shortest_name
end
p find_shortest_name([{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}])

# 10. Start with an array of numbers and compute the maximum number.
#     For example, [5, 10, 8, 3] becomes 10.

# loop through array w/ while loop  index = 0  maximum_number = array[0]
# if array[index] > maximum_number  maximum_number = array[index]  index += 1

def find_max_num(array)
  index = 0
  maximum_number = array[0]
  while index < array.length
    if array[index] > maximum_number
      maximum_number = array[index]
    end
    index += 1
  end
  return maximum_number
end
p find_max_num([5, 10, 8, 3])