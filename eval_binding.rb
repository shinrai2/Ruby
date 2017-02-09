class A
	def a
		@a=1
		binding
	end
end
class B
	def my_eval(statements,*b)
		p [statements,b]
		eval(statements,*b)
	end
	def b
		@a=2
		@binding=A.new.a
		my_eval "p @a"
	end
end
B.new.b
