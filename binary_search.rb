# # 二分探索スクリプト
#
# ## 仕様
# - 入力値は数値のカンマ区切り. パイプでスクリプトに渡す
# - 数値以外の入力値は想定していない
# - 探したい値を第1引数に渡す
#
# ## 例: '1,2,3'という入力値から'2'を探す
# $ echo '1,2,3' | ruby liner_search.rb 2

# バイナリサーチでは検索対象がソートされている必要がある
input = $stdin.gets.chomp.split(',').sort
target = ARGV[0].to_i
num_search = 0

from = 0
to = input.count

while (from <= to) do
  num_search += 1

  # 配列の中央にある値を求める
  middle = (from + to) / 2

  # 中央値の要素が探している値かチェック
  if input[middle].to_i == target
    puts "Found '#{target}'"
    puts "Number of searches: #{num_search}"
    exit 0
  end

  # 中央の要素が探している値では無い場合
  # - 探しているデータが中央の値より大きい -> 中央より後半を探索
  # - 探しているデータが中央の値より小さい -> 中央より前半を探索
  if target > input[middle].to_i
    from = middle + 1
  else
    to = middle - 1
  end
end

# 見つからなかった場合
puts "#{target} is not found.."
puts "Number of searches: #{num_search}"
exit 1
