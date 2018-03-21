# $ echo 1 1 1 1 1 | ruby count.rb
# 4
values = gets.split(" ")
count = 0

values.each do |value|
  count += 1
end

puts count