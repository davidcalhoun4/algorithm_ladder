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

puts "----"

# Given a year, report if it is a leap year.

# The tricky thing here is that a leap year in the Gregorian calendar occurs:

# on every year that is evenly divisible by 4
# except every year that is evenly divisible by 100
# unless the year is also evenly divisible by 400
# For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is.

# If your language provides a method in the standard library that does this look-up, pretend it doesn't exist and implement it yourself.


# create a function  will take in year 
# if year is % 4 == 0 if year % 100 == 0 if year % 400 == 0
# return true or false depending on if it passes if conditions 

def leap_year(year)
  if year % 400 == 0
    puts "#{year} is a leap year"
  elsif year % 4 == 0 && year % 100 !=0
    puts "#{year} is a leap year"
  else
    puts "#{year} is not a leap year"
  end
  
end
leap_year(1997)
leap_year(1996)
leap_year(1900)
leap_year(2000)

def find_leap_year(year)
  if year % 400 == 0
    return true
  elsif year % 4 == 0 && year % 100 != 0
    return true
  else
    return false
  end
end
p find_leap_year(1997)
p find_leap_year(1996)
p find_leap_year(1900)
p find_leap_year(2000)
