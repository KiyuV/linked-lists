# frozen_string_literal: true

require './lib/linked_list'

class Main
  def initialize
    @list = LinkedList.new
  end

  def run
    @list.append(1)
    @list.append(3)
    @list.prepend(2)

    @list.to_s
    puts "Size: #{@list.size}"
    puts "Head: #{@list.head}"
    puts "Tail: #{@list.tail}"

    @list.at(2)
    @list.pop
    @list.pop

    p @list.contains?(1)
  end
end

main = Main.new
main.run
