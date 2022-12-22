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
  puts "hello #{name}"
end

def starts_with_consonant? s #เริ่มต้นด้วยด้วยอักษร a e i o u
  # YOUR CODE HERE 
  s.downcase!
  valid_start=["a","e","i","o","u"]
  is_valid = false
  valid_start.each{|x|
    if x==s[0]
      return true
    end
  }
return false
end

def binary_multiple_of_4? s ## asume that input is binary string
  # YOUR CODE HERE ตามจริง ดูตัว 2 ตัวท้ายstring ว่าต้องเป็น 00 ก็ได้ เเต่อยากทำเเบบตรงๆ มากกว่า จากทฤษฎี 32 16 8 4 2 1
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
puts max_2_sum([1,2,3,4,5])
puts sum_to_n?([1,2,3,4,5],3)
puts starts_with_consonant?("app")
puts starts_with_consonant?("spa")
puts binary_multiple_of_4?("1100")
puts binary_multiple_of_4?("1110")
end