
array = [1,2,3,5,6,7,12,124,54,43,89]
count = 0 
sum = 0 
avg = 0.0 
i = 0

while array[i] do
  sum += array[i]
  count += 1
  i += 1
end

if array.length == 0
  puts "avg = 0.0"
else
  avg = sum / count
  puts "avg = #{avg}"
end
