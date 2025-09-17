attmp = 3
plural = " more attempts left"
q1 = 0

loop do
  print ("What is 9*7? ")
  guess = gets.chomp.to_i

  if guess == 63
    puts ("Yippee")
    q1 = 1
    break
  elsif attmp == 1 then
    puts ("You stupid")
    break
  else
    attmp -= 1

      if attmp == 1 then
        plural = " more attempt left"
      else
        end

    puts ("Try again. " + attmp.to_s + plural)
    next
  end
end

if q1 == 1
  attmp = 3
  q2 = 0
  
  sleep(1)

  loop do
    
    print ("What is 21*7? ")
    guess = gets.chomp.to_i

    if guess == 3
      puts ("Yippee")
      q2 = 1
      break
    elsif attmp == 1 then
      puts ("You stupid")
      break
    else # Why the hell do these look different but work the same? whatever.
      attmp -= 1

      if attmp == 1 then
        plural = " more attempt left"
      end

      puts ("Try again. " + attmp.to_s + plural)
      next

    end
  end
else
  end
