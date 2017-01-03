# encoding: UTF-8

count = Hash.new(0)
if ARGV[0] != nil
	File.open(ARGV[0]) do |f|
		# f.each_line do |line|
		# 	words = line.split
		# 	words.each do |word|
		# 		count[word] += 1
		# 	end
		# end
		while (a = f.read(10)) do
			print a
		end
	end
end

# count = count.sort do |a, b|
# 	a[1] <=> b[1]
# end
# count.each do |key, value|
# 	print "#{key}: #{value}\n"
# end