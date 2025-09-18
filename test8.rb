# frozen_string_literal: true

# NOTE: apparently that top line helps with memory so use it when applicable

# Trying to get better with methods
class Praiser
  def initialize
    print('What is your name? ')
    @name = gets.chomp
    print('And what term do you prefer? girl, boy, etc. ')
    @term = gets.chomp
    @answers = ['me', 'i am', @name.downcase]
  end

  def question
    print("Who's a good #{@term}? ")
    @response = gets.chomp.downcase
  end

  def phrases
    ["Good #{@term}", "You've done so good today", 'Darling', "My sweet #{@name}"]
  end

  def affirm
    sleep(0.5)
    puts('Yes you are')
    sleep(1)
    puts(phrases.sample)
    sleep(0.5)
  end

  def try_again
    puts("Uh-uh, try again silly #{@term}.")
  end

  def praise
    loop do
      question
      if @answers.include?(@response)
        affirm
        break
      else
        try_again
        next
      end
    end
  end
end

praise = Praiser.new
print(praise.praise)
