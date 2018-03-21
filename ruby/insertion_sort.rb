# $ echo 4 2 3 1 | ruby insertion_sort.rb
# 1 2 3 4
#
# $ echo 4 2 1 3 | DEBUG=1 ruby insertion_sort.rb
# ..
# 1 2 3 4
numbers = gets.split(" ").map(&:to_i)
debug = !!ENV["DEBUG"]

round = 1
sorted_idx = 0
0.upto(numbers.size - 1) do |i|
  sorted_idx.downto(0) do |j|
    if numbers[i] < numbers[j]
      if debug
        puts "[debug] round#{round}: exchange #{numbers[i]}(index=#{i}) for #{numbers[j]}(index=#{j})"
      end

      tmp = numbers[i]
      numbers[i] = numbers[j]
      numbers[j] = tmp

      i -= 1
    end
  end

  if debug
    puts "[debug] round#{round}: #{numbers.join(' ')}"
  end

  round += 1
  sorted_idx += 1
end

puts numbers.join(" ")