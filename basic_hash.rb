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

# Given two strings, return true if they are anagrams of each other, and false if they are not. An anagram is a word, phrase, or name formed by rearranging the letters of another, such as cinema, formed from iceman.

# Do not use any built-in sort methods.

# Input: “silent”, “listen”
# Output: true

# Input: “frog”, “bear”
# Output: false

# count how many times the letter appears 
string = "david"
p string[0]

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


# Given a string, find the most commonly occurring letter.

# Input: “peter piper picked a peck of pickled peppers”
# Output: “p”

# loop through string with .each do loop |character|
# define empty hash  hash = {}
# if hash[character] hash[character] += 1



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


def anagrams(string1, string2)
  string_1_hashed = {}
  string_2_hashed = {}
  index = 0
  while index < 
end
p anagrams("silent", "listen")
p anagrams("frog", "bear")