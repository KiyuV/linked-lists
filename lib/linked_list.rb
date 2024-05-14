# frozen_string_literal: true

require './lib/node'

class LinkedList
  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(value)
    @size += 1
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      @tail.next_node = new_node
    end
    @tail = new_node
  end

  def prepend(value)
    @size += 1
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      new_node.next_node = @head
      @head = new_node
    end
  end

  attr_reader :size

  def head
    @head.value
  end

  def tail
    @tail.value
  end

  def at(index)
    node = @head
    i = 0
    return 'Error: Index out of bounds' if index >= size

    loop do
      break if i == index

      node = node.next_node
      i += 1
    end

    node.value
  end

  def pop
    node = @head
    unless node.next_node.nil?
      node = node.next_node
    end
    node.next_node = nil
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
