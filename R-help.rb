class Help
	def hello
		puts "everyone."
	end
end
def R(class_name)
	eval "#{class_name}"
end
class B < R 'Help'
	def hello
		puts "Hello,"
		super
	end
end

B.new.hello
