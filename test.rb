require'pry'
class BubbleSort
  attr_reader :position, :swaps, :swapped, :pairs, :previous, :current, :sequence

  def initialize(sequence)
    @position = 0
    @swaps = 0
    @swapped = false

  end

  # compare to see if the previous is greater than current
  #   if it's greater than switch them
  #     if it did switch then go back to the beginning of the element and begin compare
  #   if not move to the next number in the array
  #     once last element in the array is nil, stop

  # pair_seq = [7,2,5] => [[7,2], [2,5]]
  def pairing(sequence)
    @pairs = sequence.each_cons(2).to_a
    puts pairs.inspect
    @previous = pairs[position][0]
    @current = pairs[position][1]
  end

  def sorting(sequence)
  #pairs.map do |pair|
    pairing(sequence)
       binding.pry
     until position == (sequence.count - 1)
        if  previous > current    #pairs[position] = [pair[position + 1], pair[position]]
          @sequence[position] = current
          @sequence[position + 1] = previous
          pairing(sequence)
          swaps += 1
          position = 0
          swapped = true
          binding.pry
        else
          #previous = pair[position + 1]
          #current = pair[position + 2]
          position += 1
          # binding.pry
        end
        #sequence << previous
        #binding.pry
     end
  end
end

sequence = [7,2,5] #[3,1]
example = BubbleSort.new(sequence)
puts example.sorting(sequence)
