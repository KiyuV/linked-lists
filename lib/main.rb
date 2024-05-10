# frozen_string_literal: true

require './lib/linked_list'

class Main
  def initialize
    @list = LinkedList.new
  end

  def run
    @list.append(1)
    @list.append(1)
    @list.append(2)

    @list.to_s
  end
end

main = Main.new
main.run
