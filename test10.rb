# frozen_string_literal: true

class ToDo
  def initialize
    @array = []
    puts('Write "done" when done with entries.')
  end

  def stop_playing
    return unless @array.length == 1 && @tasks == 'done'

    puts('bruh')
    exit
  end

  def input
    print('What is on your todo list today? ')
    @array << gets.chomp.downcase
    @tasks = @array.last
    stop_playing
  end

  def output_count
    puts("#{@array.count} tasks today.")
  end

  def collect
    input until @tasks == 'done'
    @array.pop
    output_count
  end

  def do_tasks
    until @array.count.zero?
      print('When a task is completed, write it here. ')
      done = gets.chomp.downcase
      puts("ok but that's not on the list") unless @array.include?(done)
      @array.delete(done)
      puts("#{@array.count} tasks left.") unless @array.count.zero?
    end
  end
end

todo = ToDo.new
print(todo.collect)
print(todo.do_tasks)
