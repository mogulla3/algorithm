# -*- coding: utf-8 -*-
# コマンドラインの引数として入力された数値より大きい値と小さい値を、予め格納していた配列の中から探しだして返す
# 条件：予め格納している値は0以上1000以下である
# もし見つからない場合は、その旨を伝える

MAX = 10000
MIN = -10000
VALUES = [123,43,777,12,54,1,466,4,66,-9,10,100]

def main
  argv = ARGV[0].to_i
  high = higher(argv)
  low = lower(argv)
  print "Number which higher than '#{argv}' => "
  if high == MAX
    print "SORRY,Not Found!!\n"
  else
    print "#{high}\n"
  end

  print "Number which lower than '#{argv}' => "
  if low == MIN
    print "Not Found\n"
  else
    print "#{low}\n"
  end
end

def higher(argv)
  i = 0
  VALUES << MAX
  while VALUES[i] < argv do
    i += 1
  end
  return VALUES[i]
end

def lower(argv)
  i = 0
  VALUES << MIN
  while VALUES[i] > argv do
    i += 1
  end
  return VALUES[i]
end

main
