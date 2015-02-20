require 'pry'

class BubbleSort1

  attr_reader :sequence, :swaps, :pair, :not_nil, :result

  def initialize(sequence)
    @swaps = 0
    @position = 0
    @sequence = sequence
    @pair = [sequence[swaps], sequence[swaps + 1]]
    @result = []
    @not_nil = true
    # compare(@sequence)
  end

  def move_forward(pair)
    @pair = [sequence[swaps + 1],  sequence[swaps + 2]]
  end

  def switch(pair)
    @pair = [sequence[swaps + 1], sequence[swaps]]
  end

  def compare(sequence)
    binding.pry
    # if sequence[@position] > sequence[@position + 1]
    #   sequence[@position] = sequence[@position + 1]
    if pair[0] > pair[1]
      switch(pair)
      @swaps += 1
      @postion = 0
    else
      #while not_nil
      @position += 1
      # compare(new_sequence)
      @result << move_forward(pair).first
    end
    #@swaps += 1
    @result
  end
end

sequence1 = [4, 3, 5, 0, 1]
sequence = [7,5]
example = BubbleSort.new(sequence)
# puts example.result
puts example.compare(sequence)

# puts "Final result: #{result}"
# puts "Swaps: #{swaps}"
