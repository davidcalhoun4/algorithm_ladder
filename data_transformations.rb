# Given a hash, create a new hash that has the keys and values switched.

# Input: {"a" => 1, "b" => 2, "c" => 3}
# Output: {1 => "a", 2 => "b", 3 => "c"}

# loop through input hash with while loop  index = 0
# create a new hash  reversed = {}

# input = {"a" => 1, "b" => 2, "c" => 3}
            
# reversed[v] = k
# reversed[needs to be iputs value] = value needs to be inputs key


# input.each do |k, v|
#   reversed[v] = k
# end

def switched(hash)
  reversed = {}
  hash.each do |k, v|
    reversed[v] = k
  end
  return reversed
end
p switched({"a" => 1, "b" => 2, "c" => 3})