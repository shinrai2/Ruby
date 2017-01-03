# encoding: GBK

dir = Dir.open("Ruby_test")
while name = dir.read
	p name
end
dir.close