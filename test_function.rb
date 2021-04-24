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
