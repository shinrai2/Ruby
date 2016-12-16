# encoding: GBK

(1..5).each do |i|
	p i * 1.8 + 32
end
p [1, "a", 2.3]

a = 1
b = 2
a, b = b, a #a, b交换
p [a, b]

p (1..3).class