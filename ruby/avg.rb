values = gets.split(" ").map(&:to_i)

count = 0
sum = 0
values.each do |value|
  sum += value
  count += 1
end

avg = if count.zero?
        0.0
      else
        sum.to_f / count.to_f
      end

puts "average: #{avg}"