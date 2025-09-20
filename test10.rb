# frozen_string_literal: true

# The to-do list
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

  def quit
    return unless @done == 'quit'

    File.open('todo_example.txt', 'w') do |file|
      file.puts(@array)
    end

    puts('ok bye')

    exit
  end

  def quitting_msg
    puts('Type "quit" to exit and save remaining tasks to a file')
    puts('Type "query" to see remaining tasks')
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

  def query
    return unless @done == 'query'

    puts(@array)
  end

  def collect
    input until @tasks == 'done'
    @array.pop
    output_count
  end

  def do_tasks
    until @array.count.zero?
      print('When a task is completed, write it here. ')
      @done = gets.chomp.downcase
      quit
      query
      puts("ok but that's not on the list") unless @array.include?(@done) || @done == 'query'
      @array.delete(@done)
      puts("#{@array.count} tasks left.") unless @array.count.zero?
    end
  end
end

todo = ToDo.new
print(todo.collect)
print(todo.quitting_msg)
print(todo.do_tasks)
