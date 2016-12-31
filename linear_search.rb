# # 線形探索スクリプト
#
# ## 仕様
# - 入力値は数値のカンマ区切り. パイプでスクリプトに渡す
# - 数値以外の入力値は想定していない
# - 探したい値を第1引数に渡す
#
# ## 例: '1,2,3'という入力値から'2'を探す
# $ echo '1,2,3' | ruby liner_search.rb 2
# Found '2'
# Number of searches: 2
input = $stdin.gets.chomp.split(',')
target = ARGV[0].to_i
num_search = 0

input.each do |value|
  num_search += 1
  if value.to_i == target
    puts "Found '#{target}'"
    puts "Number of searches: #{num_search}"
    exit 0
  end
end

puts "#{target} is not found.."
puts "Number of searches: #{num_search}"
exit 1
