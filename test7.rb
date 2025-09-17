$correct = 0
def math(question, answers)
  attmp = 3
  plural = " more attempts left"

  loop do
    print(question)
    guess = gets.chomp.downcase

    if answers.include?(guess)
      puts("Correct")
      $correct += 1
      break
    elsif attmp == 1
      puts("You stupid")
      break
    else
      attmp -= 1

      if attmp == 1
        plural = " more attempt left"
      else
      end

      puts("Try again. " + attmp.to_s + plural)
      next
    end
  end
end

math("What is 9*7? ", ["63"])
math("What is 21/7? ", ["3"])
math("Does your mom know you're gay? ", ["yes", "no"])
puts($correct + " answers correct")
