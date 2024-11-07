# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr.inject(0, :+)
end

def max_2_sum(arr)
  0 if arr.empty?
  arr.max(2).inject(0, :+)
end

def sum_to_n?(arr, n)
  arr.combination(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  s.match?(/\A(?=[^aeiou])(?=[a-z])/i)
end

def binary_multiple_of_4?(s)
  s.match?(/\A[01]*00\z/) || s == '0'
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
    "$%.2f" % @price
  end
end
