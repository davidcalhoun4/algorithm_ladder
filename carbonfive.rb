# case1:
# '' -> {playerA: 0, playerB: 0}
# 'A' -> {playerA: 1, playerB: 0}
# 'BBB' -> {playerA: 0, playerB: 3}
# 'ABAB' -> {playerA: 2, playerB: 2}


# case2:
# '' -> {playerA: 'love', playerB: 'love'}
# 'A' -> {playerA: '15', playerB: 'love'}
# 'BBB' -> {playerA: 'love', playerB: '40'}
# 'ABAB' -> {playerA: '30', playerB: '30'}

# 0 -> love
# 1 -> 15
# 2 -> 30
# 3 -> 40

# create a function to take in string tennis_score
# playerA = {} playerB = {}
# if playerA[string[index]] == A
# playerA[string] += 1
# if playerB[string[index]] == B
# playerB[string] += 1
# loop through string with while loop. index = 0. increment index += 1

# def tennis_score(string)
#   index = 0
#   players = {
#     A: 0,
#     B: 0 
#   }
  
#   scoreMapping = {
#     0 => "love",
#     1 => "15",
#     2 => "30",
#     3 => "40"
#   }
  
#   while index < string.length
#     if string[index] == "A"
#       players[:A] = players[:A] + 1
#     else 
#       players[:B] = players[:B] + 1
#     end
#     index += 1
#   end
#   players[:A] = scoreMapping[players[:A]]
#   players[:B] = scoreMapping[players[:B]]
#   return players
# end
# p tennis_score("")
# p tennis_score("A")
# p tennis_score("BBB")
# p tennis_score("ABAB")


# case1:
# '' -> {playerA: 0, playerB: 0}
# 'A' -> {playerA: 1, playerB: 0}
# 'BBB' -> {playerA: 0, playerB: 3}
# 'ABAB' -> {playerA: 2, playerB: 2}

# input: ""  
# output: players_score = {playerA: 0, playerB: 0}
# input: "ABAB"
# output: players_score = {playerA: 2, playerB: 2}

# loop through input string with while loop  index = 0
# define players hash  players_score = {playerA: 0, playerB: 0} 
# if string[index] == "A"
# players_score[playerA] = playerA + 1
# elsif string[index] == "B"
# players_score[playerB] = playerB + 1

# case2:
# '' -> {playerA: 'love', playerB: 'love'}
# 'A' -> {playerA: '15', playerB: 'love'}
# 'BBB' -> {playerA: 'love', playerB: '40'}
# 'ABAB' -> {playerA: '30', playerB: '30'}

# 0 -> love
# 1 -> 15
# 2 -> 30
# 3 -> 40
def score(string)
  players_score = {playerA: 0, playerB: 0}
  index = 0
  while index < string.length
    if string[index] == "A"
      players_score[:playerA] += 1
    elsif string[index] == "B"
      players_score[:playerB] += 1
    end
    index += 1
  end
  score_convertion = {0 => "love", 1 => "15", 2 => "30", 3 => "40"}
  players_score[:playerA] = score_convertion[players_score[:playerA]]
  players_score[:playerB] = score_convertion[players_score[:playerB]]
  # grabs hash players_score and its desired key, redefines the value of desired key to match score_convertion
  return players_score
end
p score("")
p score("A")
p score("BBB")
p score("ABAB")

# players = {playerA: 0, playerB: 0}
# players[:playerA] += 2 # the plus equals grabs the key and then re-defines the value 
# p players[:playerA]


# score_convertion = {0 => "love", 1 => "15", 2 => "30", 3 => "40"}
# p score_convertion