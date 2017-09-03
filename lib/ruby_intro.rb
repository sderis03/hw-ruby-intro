
#Sarah Deris Homework 1
# When done, submit this entire file to the autograder.
#Partnered with Paul Baier
# Part 1

def sum arr
  total = 0
  arr.each do |x|
    total += x
  end
  total
end

def max_2_sum arr
  if arr.length ==0
    return 0
  elsif arr.length ==1
     return arr.first
   else
    arr.sort!.reverse!
    x = arr.fetch(0)
    y = arr.fetch(1)
    x+y
  end
end

def sum_to_n? arr, n
    if arr.length ==0 || arr.length ==1
    return false
    end
  
  k = arr.permutation(2).to_a
  
  k.each do |x,y|
    if x+y ==n
      return true
    end
  end
  false
  
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s.empty? 
    return false
  end

  s.downcase!
  k = "bcdfghjklmnpqrstvwxyz"
  k.each_char {|consonant|
    if s[0]== consonant
      return true
    end
  }
  false

end

def binary_multiple_of_4? s
  if s == "0"
   return true
  end
  k=s
 if s.to_i(2)==0
   return false
 end
 k.end_with?("00")

 
end

# Part 3

class BookInStock


  def initialize (isbn, price)
    @isbn = isbn
    @price = price
    if @price <= 0 || @isbn.length ==0
      raise ArgumentError
    end
  end 

 
  def price_as_string
    
    string_price = @price.to_s
    if( string_price =~ /(.*)\.(.{2})$/)
      return "$#{string_price}"
    elsif string_price =~ /(.*)\.(.{1})$/
      return "$#{string_price}0"
    else( string_price =~ /(.*)$/)
      return "$#{string_price}.00"
    end
    
  end
 
  attr_accessor :price
  attr_accessor :isbn
 
end
