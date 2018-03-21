# $ echo 1 1 1 1 1 | ruby count.rb
# 4
values = gets.split(" ")
count = 0
i = 0
while values[i]
  count += 1
  i += 1
end

puts count