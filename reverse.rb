# encoding: GBK

def my_reverse(aa)
	f_a = aa.shift
	my_reverse(aa) if(aa.size > 0)
	aa.push f_a
end

rb_reverse = my_reverse [1,2,3,4,5,6]

p rb_reverse