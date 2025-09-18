class Test
  def initialize
    @correct = 0
  end

  def math(question, answers)
    attmp = 3
    plural = ' more attempts left'

    loop do
      print(question)
      guess = gets.chomp.downcase
      if answers.include?(guess)
        puts('Correct')
        @correct += 1
        break
      elsif attmp == 1
        puts('You stupid')
        break
      else
        attmp -= 1
        plural = ' more attempt left' if attmp == 1
        puts("Try again. #{attmp} #{plural}")
        next
      end
    end
  end

  def displaycorrect
    puts("#{@correct} answers correct")
  end
end

test = Test.new
test.math('What is 9*7? ', ['63'])
test.math('What is 21/7? ', ['3'])
test.math("Does your mom know you're gay? ", %w[yes no])
test.displaycorrect
