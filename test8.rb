# frozen_string_literal: true

# Trying to get better with methods
class Praiser
  def initialize
    print("What is your name? ")
    @name = gets.chomp
    print("And what term do you prefer? girl, boy, etc. ")
    @term = gets.chomp
    @answers = ["me", "i am", @name.downcase]
  end

  def affirm
    sleep(0.5)
    puts("Yes you are")
    sleep(1)
    puts("Good #{@term}")
    sleep(1)
  end

  def tryagain
    puts("Uh-uh, try again silly #{@term}.")
  end

  def question
    print("Who's a good #{@term}? ")
    @answer = gets.chomp.downcase
  end

  def praise
    loop do
      question
      if @answers.include?(@answer)
        affirm
        break
      else
        tryagain
        next
      end
    end
  end
end

praise = Praiser.new
print(praise.praise)
