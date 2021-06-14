# REVERSE STRING - COMPLETE
#Return the reverse of a given string.

# Input: “abcde”
# Output: “edcba”

# split string up. (string.split(//)) index = string.lenth - 1
# create new & empty string (reverse = "" ) loop through string. shovel orginal string[index] into reverse . index -= 1

def flip_it(string)
  split = string.split(//)
  reverse = ""
  index = split.length - 1
  while index >= 0
    reverse << split[index]
    index -= 1
  end
  return reverse
end
p flip_it("abcde")

# SHOW ME THE MONEY - COMPLETE
# Given a string, return true if the “$” character is contained within the string or false if it is not.

# Input: “i hate $ but i love money i know i know im crazy”
# Output: true

# Input: “abcdefghijklmnopqrstuvwxyz”
# Output: false

# split string up ( string.split(//) )
# loop through string from beginning
# if string[index] == $, return true. elsif string[index] != $, return false.

def money(string)
  if string.include? "$"
    return true
  else
    return false
  end
end
p money("i hate $ but i love money i know i know im crazy")
p money("abcdefghijklmnopqrstuvwxyz")

# ALTERNATE CAPITALS - COMPLETE 
# Given a string, return a copy of the original string that has every other character capitalized. (Capitalization should begin with the second character.)

#   Input: “hello, how are your porcupines today?”
#   Output: “hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?”

 # split up string  string.split(//) this will create an array with each character as its own string. 
 # create new string altered = ""
 # loop through that array  .upcase odd indexs  and shovel into altered

 def change_string(string)
  split = string.split(//)
  index = 0
  altered = ""
  while index < split.length
    if index.odd?
      altered << split[index].upcase
    else
      altered << split[index]
    end
    index += 1
  end
  return altered
end
p change_string("hello, how are your porcupines today?")

# def alt_capitalize(str)
#   str.chars.map.with_index {|c, i| i.odd? ? c.capitalize : c }.join
# end
# p alt_capitalize("hello")


# REVERSE WORDS
# Given a string of words, return a new string that contains the words in reverse order.

# Input: “popcorn is so cool isn’t it yeah i thought so”
# Output: “so thought i yeah it isn’t cool so is popcorn”

# define variable to hold string (sentence = “popcorn is so cool isn’t it yeah i thought so” )
# split up variable ( split = sentence.split(/ /) )
# loop through split with a while loop
# index = split.length - 1
# reversed = []
# reversed << split[index]
# return reversed.join(/ /)
# make sure to reversed as a string 

def reverse_it(string)
  split = string.split(/ /)
  reverse = ""
  index = split.length - 1
  while index >= 0
    reverse << split[index] + " "
    index -= 1
  end
  # reverse = ""
  # reversed = reverse.join
  return reverse
end
p reverse_it("popcorn is so cool isn’t it yeah i thought so")


# PALINDROME - COMPLETE
# Given a string, return true if it is a palindrome, and false if it is not. (A palindrome is a word that reads the same both forward and backward.)
# Input: “racecar”
# Output: true
# Input: “baloney”
# Output: false

# use condition to see if word reversed == word normal
# return true, else false

# using .reverse method
def palindrome(string)
  if string == string.reverse
    return true
  else
    return false 
  end
end
p palindrome("racecar")
p palindrome("baloney")

# reversing string by hand
def palindrome(string)
  split = string.split(//)
  reverse = ""
  index = split.length - 1

  while index >= 0
    reverse << split[index]
    index -= 1
  end

  if string == reverse
    return true
  else 
    return false
  end

end
p palindrome("racecar")
p palindrome("colin")

# FRIST DUPLICATE CHARACTER - COMPLETE
# Given a string, find the first occurence of two duplicate characters in a row, and return the duplicated character.

# Input: “abcdefghhijkkloooop”
# Output: “h”

# write a function 
# loop through input 
# index1 = 0
# index2 = index1 + 1
# if index1 == index2 return index1
# index1 += 1
# index2 = index2 + 1

# returns first duplicate with nested while loop
def duplicate(string)
  index1 = 0
  while index1 < string.length
    index2 = index1 + 1
    while index2 < string.length
      if string[index1] == string[index2]
        return string[index1]
      end
      index2 += 1
    end
    index1 += 1
  end
end
p duplicate("abcdefghhijkkloooop")

# returns all duplicates
def duplicate(string)
  index1 = 0
  duplicates = []
  while index1 <= string.length
    index2 = index1 + 1
    while index2 <= string.length
      if string[index1] == string[index2]
        duplicates << string[index1]
      end
      index2 += 1
    end
    index1 += 1
  end
  return duplicates
end
p duplicate("abcdefghhijkkloooop")

# returns first duplicate with single while loop
index1 = 0
index2 = 1
string = "abcdcefghhijkkloooop"
split = string.split(//)
while index1 < split.length
  if split[index1] == split[index2]
    p split[index1]
    break
  end
  index1 += 1
  index2 += 1
end


# HAMMING - COMPLETE
# Given two strings of equal length, return the number of characters that are different between the two strings.

# Input: "ABCDEFG", "ABCXEOG"
# Output: 2

# Explanation: While the A, B, C, E, and G are in the same place for both strings, they have different characters in the other spaces. Since there are 2 such spaces that are different (the D and F in the first string), we return 2.

# Input: "ABCDEFG", "ABCDEFG",
# Output: 0

# loop through string1 w/ while loop  index = 0  define counter variable to keep track of character differences between two strings 
# if string1[index] != string2[index]  then increase counter by 1

string1 = "ABCDEFG"
string2 = "ABCXEOG"
index = 0
counter = 0
while index < string1.length
  if string1[index] != string2[index]
    counter += 1
  end
  index += 1
end
p counter

# algorithm within function
def difference(string1, string2)
 
  index = 0
  counter = 0
  while index < string1.length
    if string1[index] != string2[index]
      counter += 1
    end
    index += 1
  end
  return counter
end
p difference("ABCDEFG", "ABCXEOG")
p difference("ABCDEFG", "ABCDEFG")
