# frozen_string_literal: true

require './lib/node'

class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      @tail.next_node = new_node
      @tail = new_node
    end
  end

  def to_s
    node = @head
    until node.nil?
      print "(#{node.value}) -> "
      node = node.next_node
    end
    puts 'nil '
  end
end
