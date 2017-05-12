#No1
num = 4
if num > 10
  puts "large"
elsif num == 10
  puts "eq"
elsif num < 10
  puts "small"
end

#No2
a = 10
b = 20

if a < b
  puts "aの方が大きく値は#{a}"
else
  puts "bの方が大きく値は#{b}"
end

#No3
a = 1
b = 2

a, b = b, a

puts "aは#{a} bは#{b}"

#No4
 0.upto(9) {|num|
   puts num
 }

#No5
 n = 10
 for i in 1..n do
   puts "*" *i
 end

#No6, No7
 a, b, c = 1, 2, 3
 array=[1, 2, 3]
 puts array

#No8
 d, e = 10, 2
 size = array.size
 realsize = size - 1

 if array.find {|num| num != d}
   array << d 
 elsif array.find {|num| num != e}
   array << e
 end

 puts array

#No9
 nums = [1, 2, 3]
 def sum(*array)
   sum = 0
   array.each do |num|
     sum += num
   end
   puts sum  
 end

 sum(*nums)

#No10
 def average(*array)
  sum = 0
  array.each do |num|
    sum += num
  end
  size = array.size
  average = sum / size
  puts average
 end

 average(*nums)

#No11
 newarray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

 def reverse(*array)
  sum = 0
  count = 0
  array.each do |num|
    count += 1
    sum += num
  if sum > 15
    print array[0..count - 2]
    print "\n"
    break
  end  
  end
 end  

  reverse(*newarray)

#No12 No13 No14 No15 No 16
  numeric = {"key1" => 1, "key2" => 2, "key3" => 3}

  puts numeric["key2"]

  numeric["key4"] = 4

  numeric.each do |key, value|
    puts "#{key} => #{value}"
  end  

  numeric.each do |key, value|
    value = value * 2
    puts "#{key} => #{value}"
  end  

  for i in 1..100 do
    if i % 3 == 0 && i % 5 == 0
      print "FizzBuzz"
      print " "
    elsif i % 3 == 0
      print "Fizz" 
      print " "
    elsif i % 5 == 0
      print "Buzz"
      print " "
    else
      print i
      print " "
    end
  end
  
  print "\n"

#No18
  a1 = [1, 2, 3]
  a2 = []
  a1.each do |num|
    num = num * 2
    a2 << num
  end

  print a2
  print "\n"

#No19
  def check(*array, number)
    if array.find {|num| num != number}
      puts "true"
    else
      puts "false"
    end
  end

  check(*a1, 2)

#No20
  def find_minimum(*array)
    minimum = array[0]
    array.each do |num|
      if num < minimum 
         minimum = num
      end
    end
    puts "最小の数は#{minimum}です"
  end

  find_minimum(*a1)

#No21
  def re_check(*array1)
    new_array = array1.uniq
   
    old_size = array1.size
    new_size = new_array.size

   if old_size > new_size
     puts "true"
   else
     puts "false"
   end

  end

  a3 = [1,1,3,4,5,]
  re_check(*a2)

#No22
  def re_line(*array)
    new_array = array.sort
    array2=[]
    for i in 0...new_array.size 
      if new_array[i] == new_array[i+1]
       if new_array[i+1] != new_array[i-1] 
         array2 << new_array[i]
       end
      end
    end
    print array2
    print "\n"
  end

  a4 = [1, 3, 2, 3, 8, 3, 2]
  re_line(*a4)

#No23
  def recount_line(*array)
    new_array = array.sort
    array2={}
    count = 2
    for i in 0...new_array.size 
      if new_array[i] == new_array[i+1]
       if new_array[i] != new_array[i+2] 
         array2["#{new_array[i]}"] = count
         count = 2
       else
         count += 1
       end
      end
    end
    array2.each do |key, value|
    puts "#{key}=> #{value}"
    end
    print "\n"
  end

  a5=[1,2,2,2,2,3,3,3,3,3,4]
  recount_line(*a5)
