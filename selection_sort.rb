# $ echo 4 2 3 1 | ruby selection_sort.rb
# 1 2 3 4
#
# $ echo 4 2 1 3 | DEBUG=1 ruby selection_sort.rb
# [debug] round1: searching minimum value from input. current => 4(index=0)
# ..
# [debug] round1: detect minimum value => 1(index=3)
# [debug] round1: exchange!
# ..
# 1 2 3 4
numbers = gets.split(" ").map(&:to_i)
debug = !!ENV["DEBUG"]

round = 1
left_end = 0
loop do
  break if round > numbers.size

  # Searching minimum value
  min = nil
  min_idx = nil
  (0 + left_end).upto(numbers.size - 1) do |n|
    unless min
      min = numbers[n]
      min_idx = n
    end

    if numbers[n] < min
      min = numbers[n]
      min_idx = n
    end

    if debug
      puts "[debug] round#{round}: searching minimum value from input. current => #{min}(index=#{min_idx})"
    end
  end

  if debug
    puts "[debug] round#{round}: detect minimum value => #{min}(index=#{min_idx})"
  end

  # move minimum value to the left end if necessary
  if numbers[left_end] > min
    if debug
      puts "[debug] round#{round}: change the value at the left end to #{min} from #{numbers[left_end]}"
    end
    tmp = numbers[left_end]
    numbers[left_end] = min
    numbers[min_idx] = tmp
  end

  if debug
    puts "[debug] round#{round}: #{numbers.join(' ')}"
  end

  round += 1
  left_end += 1
end