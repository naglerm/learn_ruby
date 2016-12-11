#write your code here
#an adds method that adds 2 numbers
def add(x, y)
  x + y
end

#adds all elements of an array
def sum(nums)
  sum = 0
  nums.each do |a|
    sum = sum + a
  end
  sum
end

#a subtraction method for 2 numbers
def subtract(x, y)
  x - y
end

#multiplies an array of numbers
def multiply(nums)
  product = 1
  nums.each do |a|
    product = product * a
  end
  product
end

#raise one number to a positive power
def power(base, pow)
  result = 1
  pow.times do
    result = result * base
  end
  result
end

def factorial(n)
  if n == 0
    1
  else
    n * factorial(n - 1)
  end
end
