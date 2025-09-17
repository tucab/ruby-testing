print("Number: ")
number = gets.to_i
num_m = 1
num_f = 1
until num_m == number do
  num_m = num_m+1
  num_f = num_f*num_m
end
p num_f
