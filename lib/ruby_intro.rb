# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each{|x| sum+=x}
  return sum
end

def max_2_sum arr
  return sum(arr.max(2))
end

def sum_to_n? arr, n
  # YOUR CODE HE
  sum = 0
  counter = 0
  for x in arr
    if counter<n
      sum+=x
      counter+=1
    else
      break
    end
  end
  return sum
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s #เริ่มต้นด้วยด้วยอักษร
  # YOUR CODE HERE 
  return false if s.nil?
  return false if s.length == 0
  _s = s[0].downcase
  con="bcdfghjklmnpqrstvwxz".split ""
  con.each{|x| return true if x==_s}## check if start with consonant
  return false
end

def binary_multiple_of_4? s ## asume that input is binary string
  # YOUR CODE HERE ตามจริง ดูตัว 2 ตัวท้ายstring ว่าต้องเป็น 00 ก็ได้ เเต่อยากทำเเบบตรงๆ มากกว่า จากทฤษฎี 32 16 8 4 2 1
  return false if s.nil?
  return false if s.length == 0
  s.split('').each{|x| return false if x != "1" and x != "0"}
  num=s.to_i(2)
  if num%4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERES
  attr_accessor :isbn
  attr_accessor :price
  def initialize(_isbn,_price)
    @isbn=_isbn
    @price=_price
    if @price <= 0 or @isbn.empty? 
      raise ArgumentError
    end
  end
  def price_as_string()
    return "$#{'%.2f' % @price}"
  end
end
