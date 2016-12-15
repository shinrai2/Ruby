# encoding: GBK

file = File.open("pac.txt")
text = file.read
tsplit = text.split
tsplit.each do |ts|
	p ts if /.+google.+/ =~ ts
end