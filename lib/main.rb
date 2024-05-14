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
    @list.append(4)

    @list.to_s
    @list.size
    @list.head
    @list.tail

    @list.at(2)
    @list.contains?(1)
    @list.find(1)

    @list.insert_at(100, 3)
    @list.to_s

    @list.remove_at(2)
    @list.to_s
  end
end

main = Main.new
main.run
