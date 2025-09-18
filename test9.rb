# frozen_string_literal: true

# An example of setting the variables
# I can't even lie I actually get flustered from this lmao
class Praiser
  def initialize
    @name = "Juno"
    @term = "girl"
    @answers = [
      "me",
      "i am",
      @name.downcase,
      "i'm a good #{@term.downcase}",
      "im a good #{@term.downcase}",
      "i am a good #{@term.downcase}"
    ]
  end

  def question
    print("Who's a good #{@term}? ")
    @response = gets.chomp.downcase
  end

  def phrases
    ["Good #{@term}", "You've done so good today", "Darling", "My sweet #{@name}", "Baby #{@term}", "Pretty #{@term}"]
  end

  def affirm
    sleep(0.5)
    puts("Yes you are")
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
