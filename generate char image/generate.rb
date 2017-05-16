#encoding:utf-8
require 'RMagick'

area = "\u4E00".."\u9FA5"
nstart = 0
nend = 0x9fa5 - 0x4e00
area.each do |unic|
	canvas = Magick::Image.new(64, 64){self.background_color = 'white'}
	t = Magick::Draw.new
	t.font = 'font/msyhl.ttc'
	t.pointsize(50)
	t.text(7,50, unic)
	t.draw(canvas)
	canvas.write("image/msyhl/#{unic}.png")
	nstart += 1
	if nstart%400==0
		printf("%.3f\%\n", nstart*100.0/nend)
	end
end
print "finished!"