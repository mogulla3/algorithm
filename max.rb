
ary = [12,4567,124,54,75,12345,343,45,1245,266666]
i = 0
max = ary[0]

while ary[i] do
  if max < ary[i]
    max = ary[i]
  end
  i += 1
end

puts "MAXVALUE => #{max}"
