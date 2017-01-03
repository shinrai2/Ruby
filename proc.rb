# class Symbol

#   def to_proc
#     Proc.new {|obj| p self }
#   end

# end

puts [1,2,3].map(&Proc.new {|obj| obj+=1 })
# p :AddBy.class