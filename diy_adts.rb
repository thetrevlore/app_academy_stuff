class Stack
  attr_accessor :ivar
  def initialize
    # create ivar to store stack here!
    @ivar = []
  end

  def add(el)
    # adds an element to the stack
    ivar << el
    ivar
  end

  def remove
    # removes one element from the stack
    ivar.pop
    ivar
  end

  def show
    # return a copy of the stack
    ivar.dup
  end

end


class Queue

  attr_accessor :stack

  def initialize
    @stack = []
  end

  def enqueue(el)
    stack.unshift(el)
  end

  def dequeue
    stack.pop
  end

  def show
    stack.dup
  end

end

class Map

  attr_accessor :pairs

  def initialize
    @pairs = []
  end

  def assign(key, value)
    i = 0
    while i < pairs.length
      if pairs[i][0] == key
        pairs[i][1] = value
        return pairs
      end
      i += 1
    end
    pairs << [key, value]
  end

  def lookup(key)
    i = 0
    while i < pairs.length
      if pairs[i][0] == key
        return pairs[i]
      end
      i += 1
    end
    puts "no such key"
  end

  def remove(key)
    i = 0
    while i < pairs.length
      if pairs[i][0] == key
        pairs.delete pairs[i]
        return pairs
      end
      i += 1
    end
    puts "no such key"
  end

  def show
    pairs
  end

end
