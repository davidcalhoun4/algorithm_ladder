# Given ONE array of strings, return a new array that contains every combination of each string with every other string in the array.

# Input: ["a", "b", "c", "d"]
# Output: ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]

# expected combined = ["ab", "ac", "ad"]

# loop through input array while loop index = 0
# while index < input.length 
# combined = []
# create second while loop  where added string "ab" will be shoveled into combined array  index = 0  index += 1 
# if array[index] != array[index] << into combined 

input = ["a", "b", "c", "d"]
combined = []
index = 0
while index < input.length
  index2 = 0    
  while index2 < input.length
    if input[index] != input[index2]
      combined << "#{input[index]}#{input[index2]}"  # ["a b"]
    end
    index2 += 1
  end
  index += 1
end
p combined


# Given two sorted arrays, merge the second array into the first array while ensuring that the first array remains sorted. Do not use any built-in sort methods.

# Input :
# A : [1, 5, 8]
# B : [6, 9]

# Modified A : [1, 5, 6, 8, 9]

# combine arrays, then sort them 
# A = {1: 1, 2: 5,  }

a = [1, 5, 8]