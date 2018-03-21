# $ echo 1 4 2 3 | ruby bubble_sort.rb
# 1 2 3 4

# $ echo 1 4 2 3 | DEBUG=1 ruby bubble_sort.rb
# [debug] round1: 1 4 2 3
# [debug] round1: 1 2 4 3
# [debug] round1: 1 2 4 3
# [debug] round2: 1 2 3 4
# ..
# 1 2 3 4

numbers = gets.split(" ").map(&:to_i)
debug = !!ENV["DEBUG"]

round = 1
loop do
  proc_cnt = 0 # 入れ替えの実行回数

  (numbers.size - 1).downto(0 + round) do |n|
    right_idx = n
    left_idx = right_idx - 1

    if numbers[right_idx] < numbers[left_idx]
      tmp = numbers[left_idx]
      numbers[left_idx] = numbers[right_idx]
      numbers[right_idx] = tmp
      proc_cnt += 1
    end

    if debug
      puts "[debug] round#{round}: #{numbers.join(' ')}"
    end
  end

  break if proc_cnt <= 0 # 一度も入れ替えを実行していなければ終了
  round += 1
end

puts numbers.join(" ")