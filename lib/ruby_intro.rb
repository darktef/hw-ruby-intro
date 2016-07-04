# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	arr.reduce(0,:+)
end

def max_2_sum arr
  sum(arr.max(2))
end

def sum_to_n? arr, n
  arr.permutation(2).to_a.map{|x| sum(x)}.include? n
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  s =~ /^[^aeiou\W]/i
end

def binary_multiple_of_4? s
  if s =~ /^[0-1]{1,100}$/
    return true if s.to_i(2)%4 == 0
  end
  false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    '$' + '%.2f' % @price
  end

end
