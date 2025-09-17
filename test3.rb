count = 0
total = 0
print("Enter rating: ")
rating = gets.to_i
until rating == 0 do
  total = total + rating
  count = count + 1
  print("Enter rating: ")
  rating = gets.to_i
end
avg = total/count
p avg