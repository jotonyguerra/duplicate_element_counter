#YOUR CODE GOES HERE
def duplicate_counter(array)
  duplicates = 0
  counter = 0
  array.each_with_index { |element, index|
    counter += 1
    if element == array[index + 1]
      duplicates += 1
    end
  }
  printf "duplicates: #{duplicates} input_size: %6d, inner_loops: %d\n", array.length, counter
end

input_sizes = [10, 20, 50, 100, 200, 500, 1000, 2000, 5000]

input_sizes.each do |size|
  # Generate an array containing _size_ random numbers. The numbers are chosen
  # from 0 to _size_ / 2 so that there will be some duplicates.
  input_array = size.times.map { rand(size / 2) }
  duplicate_counter(input_array)
end

#ask about benchmark
