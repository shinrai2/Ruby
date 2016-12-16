# encoding: GBK

ary = (1..100).to_a
result = []
10.times do |i|
	result << ary[10 * i, 10]
end
p result