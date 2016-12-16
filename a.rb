# encoding: GBK

class Array
    def my_equal(other)
        self.each_with_index do |item, index|
            self[index] = other[index]
        end
    end
end

(1..5).each do |i|
	p i * 1.8 + 32
end
p [1, "a", 2.3]

a = 1
b = 2
x = a, b
#x.my_equal b,a #a, b交换
p a, b

p (1..3).class
