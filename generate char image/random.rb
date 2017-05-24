#encoding:utf-8

basepath = 'image/'
path = ['Deng/', 'Dengb/', 'Dengl/', 'msyh/', 'msyhl/', 
	'simfang/', 'simhei/', 'simkai/', 'simsun/', 'simsunnew/']
area = ("\u4E00".."\u9FA5").to_a
count = 0 # < 3500
while(true) do
	r = rand(0x9fa5 - 0x4e00)
	if !File.exist?("#{basepath}#{path[0]}train/#{area[r]}.png") then
		path.each do |i|
			File.rename("#{basepath}#{i}#{area[r]}.png", 
				"#{basepath}#{i}train/#{area[r]}.png")
		end
		count += 1
	end
	print "#{count/35}% \n" if count%35==0
	break if count == 3500
end
