# frozen_string_literal: true

class Game
  def initialize
    print("What's 9+10? ")
  end

  def answer
    @answ = gets.chomp.to_i
  end

  def check
    if @answ == 21
      puts('You stupid')
    elsif @answ == 19
      puts('Kill yourself')
    else
      puts('Nuh uh')
    end
  end

  def completion
    answer
    check
  end
end

game = Game.new
print(game.completion)
