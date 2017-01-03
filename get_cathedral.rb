require "open-uri"

url = "http://cruel.org/freeware/cathedral.html"

filename = "cathedral.html"

File.open(filename, "w") do |f|
	text = open(url).read
	p text.encoding
	f.write text
end