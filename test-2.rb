a = [1, 4, 5, 6, 9]
b = [7,8,7,8]
c = [10,5,4,1]

def plant(list) 
 return false if list.length == 0 || !list.kind_of?(Array)
 
  x = 0
  list.each_with_index do |value, i|
    list.delete_at(i)
    x+=1 if is_sorted?(list)
    list.insert(i, value)
  end
  return x
end

def is_sorted?(list)
  list == list.sort ? true : false
end

j1 = plant(a)
j2 = plant(b)
j3 = plant(c)
puts "Result is : #{j1}"
puts "Result is : #{j2}"
puts "Result is : #{j3}"