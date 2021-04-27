#  1. Convert an array of arrays into a hash.
#     For example, [[1, 3], [8, 9], [2, 16]] becomes {1 => 3, 8 => 9, 2 => 16}.

# loop through array with while loop  index = 0
# create empty hash  paired_hash = {}  
# key = array[index][0]  value = array[index][1] (this defines the key and value for the hash)
# paired_hash[key] = value (puts the defined key and value from each array's index into hash data type)

def array_to_hash(array)
  index = 0
  paired_hash = {}
  while index < array.length
    key = array[index][0]
    value = array[index][1]
    paired_hash[key] = value
    index += 1
  end
  return paired_hash
end
p array_to_hash([[1, 3], [8, 9], [2, 16], ["david", "calhoun"]])

#  2. Convert an array of hashes into a hash using the :id key from the array's hashes as the keys in the new hash.
#     For example, [{id: 1, color: "blue", price: 32}, {id: 2, color: "red", price: 12}] becomes {1 => {id: 1, color: "blue", price: 32}, 2 => {id: 2, color: "red", price: 12}}.

# loop through array w/ while loop  index = 0
# define empty hash  items_hash = {}
# for items_hash, use the array :id key to be the value, and the hash to be the value (already in hash form)
# items_hash[items[index][:id]] = items[index]

def array_hash_to_hash(array)
  index = 0
  items_hash = {}
  while index < array.length
    items_hash[array[index][:id]] = array[index]
    index += 1
  end
  return items_hash
end
p array_hash_to_hash([{id: 1, color: "blue", price: 32}, {id: 2, color: "red", price: 12}])

#  3. Convert a string into a hash with keys for each letter in the string and values for the number of times the letter appears in the string.
#     For example, "bookkeeper" becomes {"b" => 1, "o" => 2, "k" => 2, "e" => 3, "p" => 1, "r" => 1}.

# loop through string w/ while loop  index = 0
# define new hash  counter_hash = {}
# grab letter from string  letter = string[index]
# if counter_hash doesn't have letter == nil and set it == 0
# increment counter_hash[index] += 1

def string_to_hash(string)
  counter_hash = {}
  index = 0
  while index < string.length
    letter = string[index]            
    if counter_hash[letter] == nil     
      counter_hash[letter] = 0
    end
    counter_hash[letter] += 1
    index += 1
  end
  return counter_hash
end
p string_to_hash("bookkeeper")

#  4. Convert a hash into an array of arrays.
#     For example, {"chair" => 100, "book" => 14} becomes [["chair", 100], ["book", 14]].

# loop through hash with .each do loop  block variables being item, price
# create array  store_items = []
# shovel block variables into array

def hash_to_array(hash)
  store_items = []
  hash.each do |item, price|
    store_items << [item, price]
  end
  return store_items
end
p hash_to_array({"chair" => 100, "book" => 14})



#  5. Convert a hash into an array of hashes using the keys from each hash as the :id key in each of the array's hashes.
#     For example, {321 => {name: "Alice", age: 31}, 322 => {name: "Maria", age: 27}} becomes [{id: 321, name: "Alice", age: 31}, {id: 322, name: "Maria", age: 27}].

# loop through hash 

people = { 321 => { name: "Alice", age: 31 }, 322 => { name: "Maria", age: 27 } }
people_array = []
people.each do |id, person|
  person[:id] = id
  people_array << person
end
p people_array


#  6. Convert an array of strings into a hash with keys for each string in the array and values for the number of times the string appears in the array.
#     For example, ["do", "or", "do", "not"] becomes {"do" => 2, "or" => 1, "not" => 1}.

#  7. Convert a hash into a flat array containing all the hash’s keys and values.
#     For example, {"a" => 1, "b" => 2, "c" => 3, "d" => 4} becomes ["a", 1, "b", 2, "c", 3, "d", 4].

#  8. Combine data from a hash with names and prices and an array of hashes with names, colors, and weights to make a new hash.
#     For example, {"chair" => 75, "book" => 15} and [{name: "chair", color: "red", weight: 10}, {name: "book", color: "black", weight: 1}] becomes {"chair" => {price: 75, color: "red", weight: 10}, "book" => {price: 15, color: "black", weight: 1}}.

#  9. Convert an array of hashes into a hash of arrays, using the author as keys and the titles as values.
#     For example, [{author: "Jeff Smith", title: "Bone"}, {author: "George Orwell", title: "1984"}, {author: "Jeff Smith", title: "RASL"}] becomes {"Jeff Smith" => ["Bone", "RASL"], "George Orwell" => ["1984"]}.

# 10. Given a hash, create a new hash that has the keys and values switched.
#     For example, {"a" => 1, "b" => 2, "c" => 3} becomes {1 => "a", 2 => "b", 3 => "c"}.

# SOLUTIONS: https://gist.github.com/peterxjang/216a7a6e8411ee5c05118e78022f2bc7