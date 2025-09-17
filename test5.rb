total = 0
steps = 0
until steps == -1 do
  total += steps
  print("Daily steps: ")
  steps = gets.to_i
end
puts ("Your total steps = " + total.to_s)
