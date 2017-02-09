class M1
	def initialize(value)
		@x = value
	end
	def my_method
		p local_variables
	end
end
v1 = "123"
object = M1.new(1)
# object.my_method
m = object.method :my_method
m.call