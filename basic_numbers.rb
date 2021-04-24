# Write a function that prints out every number from 1 to N, with the following exceptions:

# If the number is divisible by 3, print out "FIZZ".
# If the number is divisible by 5, print out "BUZZ".
# If the number is divisible by both 3 and 5, print out "FIZZBUZZ".

# number = 1
# while loop , while n <= 100
# if n % 3 == 0 p "FIZZ"
# elsif n % 5 == 0 p "BUZZ"
# elsif n % 3 && n % 5 p "FIZZBUZZ"
# else p n 
# n += 1

def fizz_buzz(n)
  while n <= 100 # n = 15
    if n % 3 == 0 && n % 5 == 0
      p "FIZZBUZZ"
    elsif n % 3 == 0
      p "FIZZ"
    elsif n % 5 == 0
      p "BUZZ"
    else 
      p n # 1, 2, FIZZ, 4, BUZZ
    end
    n += 1
  end
end
p fizz_buzz(1)
