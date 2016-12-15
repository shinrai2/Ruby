# encoding: GBK

file = File.open("pac.txt")
text = file.read
file.close
tsplit = text.split
if ARGV[0] then
	regex1 = Regexp.new(".+" + ARGV[0] + ".+")
else
	regex1 = /.+twitter.+/
end
tsplit.each do |ts|
	p ts[1, ts.length - 3] if regex1 =~ ts
end