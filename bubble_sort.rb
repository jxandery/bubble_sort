require 'pry'

class BubbleSort

  attr_reader :swaps, :sequence, :position, :current

  def initialize(sequence)
    @sequence = sequence
    @position = 0
    @previous = sequence[0]
    @current = sequence[1]
    @swaps = 0
  end


  def compare
    if @previous > @current
      @previous = sequence[current]
      @current = sequence[previous]
      @swaps += 1
      @position = 0
    else
      @previous = sequence[position + 1]
      @current = sequence[position + 2]
      @postion += 1
    end
  end

  def sorter(sequence)
    results = sequence.map do |num|
    if index > 0
      compare
  end

  end
end

sequence = [4, 3, 5, 0, 1]
results = BubbleSort.new(sequence)

puts "Final result: #{results.sorter(sequence)}"
puts "Swaps: #{results.swaps}"
