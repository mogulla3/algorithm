values = gets.split(" ").map(&:to_i)

max = nil
values.each do |value|
  max ||= value
  max = value if value > max
end

puts "max: #{max}"