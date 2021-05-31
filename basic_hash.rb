#  COUNTER
# Given an array of strings, return a hash that provides of a count of how many times each string occurs.

# Input: ["Dewey", "Truman", "Dewey", "Dewey", "Truman", "Truman", "Dewey", "Truman", "Truman", "Dewey", "Dewey"]

# Output: {"Dewey" => 6, "Truman" => 5}

# Explanation: "Dewey" occurs 6 times in the array, while "Truman" occurs 5 times.

def name_counter(array)
  hash = {}
  array.each do |string|
    if hash[string]
      hash[string] += 1
    else
      hash[string] = 1
    end
  end
  return hash
end
p name_counter(["Dewey", "Truman", "Dewey", "Dewey", "Truman", "Truman", "Dewey", "Truman", "Truman", "Dewey", "Dewey"])

# ANAGRAMS
# Given two strings, return true if they are anagrams of each other, and false if they are not. An anagram is a word, phrase, or name formed by rearranging the letters of another, such as cinema, formed from iceman.

# Do not use any built-in sort methods.

# Input: “silent”, “listen”
# Output: true

# Input: “frog”, “bear”
# Output: false

# count how many times the letter appears 
string = "david"
p string[0]

# CONVERSION
# Given a DNA strand, return its RNA complement (per RNA transcription).

# Both DNA and RNA strands are a sequence of nucleotides. Here we're representing the sequences with single-letter characters (e.g. a sample strand may look like: "AGCA".)

# Given a string representing a DNA strand, provide its transcribed RNA strand, according to the following pattern:

# G becomes C
# C becomes G
# T becomes A
# A becomes U

# So based on all this, here's a sample input/output:

# Input: 'ACGTGGTCTTAA'
# Output: 'UGCACCAGAAUU'

# loop through dna array with while loop  index = 0
# define empty string  rna_strand = ""
# if dna[index] == "g" 
#  rna_strand << "c"
# elsif dna[index] == "c"
#  rna_strand << "g"

# index += 1
# return rna_strand
# define g = c c = g t = a a = u

def dna_to_rna(string)
  index = 0
  rna_strand = ""
  while index < string.length
    if string[index] == "G"
      rna_strand << "C"
    elsif string[index] == "C"
      rna_strand << "G"
    elsif string[index] == "T"
      rna_strand << "A"
    elsif string[index] == "A"
      rna_strand << "U"
    end
    index += 1
  end
  return rna_strand
end
p dna_to_rna("ACGTGGTCTTAA")
# Output: 'UGCACCAGAAUU'
# ____________________________________________________________

# Most Frequent Letter
# Given a string, find the most commonly occurring letter.

# Input: “peter piper picked a peck of pickled peppers”
# Output: “p”

# loop through string with .each do loop |character|
# define empty hash  hash = {}
# if hash[character] hash[character] += 1

def most_frequent_letter(string)
  letter_hash = {}
  index = 0
  most_frequent_count = 0
  most_frequent_character = ""

  while index < string.length
    if letter_hash[string[index]] == nil 
      letter_hash[string[index]] = 0
    end
    letter_hash[string[index]] += 1

    if letter_hash[string[index]] > most_frequent_count
      most_frequent_count = letter_hash[string[index]]
      most_frequent_character = string[index]
    end

    index += 1
  end
  return most_frequent_character
end
p most_frequent_letter("peter piper picked a peck of pickled peppers")





# Given two strings, return true if they are anagrams of each other, and false if they are not. An anagram is a word, phrase, or name formed by rearranging the letters of another, such as cinema, formed from iceman.

# Do not use any built-in sort methods.

# Input: “silent”, “listen”
# Output: true

# Input: “frog”, “bear”
# Output: false


# "silent" {"s" => 1, "i" =>, "l" =>, "e" =>, "n" =>, "t" => 1}
# "listen" 
# string_1_hashed = {}
# string_2_hashed = {}
# while loop through string1 string2  index = 0
# if string_1_hashed[string1[index]]
# string_1_hashed[string1[index]] = 1
# else string_1_hashed[string1[index]] += 1

# index += 1
# repeat for string_2_hashed = {}

# if string_1_hashed == string_2_hashed 
# return true else return false 


# def anagrams(string1, string2)
#   string_1_hashed = {}
#   string_2_hashed = {}
#   index = 0
#   while index < 
# end
# p anagrams("silent", "listen")
# p anagrams("frog", "bear")

# Order the Whole Menu\
# Given a hash, where the keys are strings representing food items, and the values are numbers representing the price of each food, return the amount someone would pay if they'd order one of each food from the entire menu.

# Input: {"hot dog" => 2, "hamburger" => 3, "steak sandwich" => 5, "fries" => 1, "cole slaw" => 1, "soda" => 2}

# Output: 14

# Explanation: If someone would order one of everything on the menu, they'd pay a total of 14 (the sum of all the hash's values).

# menu = {"hot dog" => 2, "hamburger" => 3, "steak sandwich" => 5, "fries" => 1, "cole slaw" => 1, "soda" => 2}
# loop through menu. add values to sum, sum = 0
# p menu[0] cannot call menu index because menu[0] is the whole set of hashes
# p menu.each_value.sum
# p menu.each_value





# Complete the Data I
# Given an array of social media posts and a hash of users, return a list of posts (as an array of hashes) that replaces the submitted_by id number as the person's actual name.

# For example, given this array of posts (note that the submitted_by is an id number):

# [
# {title: 'Me Eating Pizza', submitted_by: 231, likes: 1549},
# {title: 'i never knew how cool i was until now', submitted_by: 989, likes: 3},
# {title: 'best selfie evar!!!', submitted_by: 111, likes: 1092},
# {title: 'Mondays are the worst', submitted_by: 403, likes: 644}
# ]

# And this hash of users (the key is the id number and the value is the user's real name):

# users = {403 => "Aunty Em", 231 => "Joelle P.", 989 => "Lyndon Johnson", 111 => "Patti Q."}

# Return the array of posts as follows:

# [
# {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
# {title: 'i never knew how cool i was until now', submitted_by: "Lyndon Johnson", likes: 3},
# {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
# {title: 'Mondays are the worst', submitted_by: "Aunty Em", likes: 644}
# ]

# posts = [
# {title: 'Me Eating Pizza', submitted_by: 231, likes: 1549},
# {title: 'i never knew how cool i was until now', submitted_by: 989, likes: 3},
# {title: 'best selfie evar!!!', submitted_by: 111, likes: 1092},
# {title: 'Mondays are the worst', submitted_by: 403, likes: 644}
# ]
# p posts[0][:submitted_by]

# users = {403 => "Aunty Em", 231 => "Joelle P.", 989 => "Lyndon Johnson", 111 => "Patti Q."}

# i need to change posts submitted_by value from an integer to the users name. the similarity here is the integer between posts and users, the foreign_id if you will. 

# posts[0][:submitted_by] = users[posts[0][:submitted_by]]
# p posts[0]

# def who_da_user(array)
#   posts = [
#     {title: 'Me Eating Pizza', submitted_by: 231, likes: 1549},
#     {title: 'i never knew how cool i was until now', submitted_by: 989, likes: 3},
#     {title: 'best selfie evar!!!', submitted_by: 111, likes: 1092},
#     {title: 'Mondays are the worst', submitted_by: 403, likes: 644}
#     ]
#   users = {403 => "Aunty Em", 231 => "Joelle P.", 989 => "Lyndon Johnson", 111 => "Patti Q."}

#   index = 0
#   while index < array.length
#     array[index][:submitted_by] = users[array[index][:submitted_by]]
#     index += 1
#   end
#   return array
# end
# p who_da_user(posts)