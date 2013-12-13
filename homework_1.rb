class Ship
	attr_accessor :crew_hash, :sailor_list, 

	def initialize (crew_list)
		@sailor_list = Hash.new
		crew_list.each_with_index{|item,index| @sailor_list[item] = index}
	end
end

gsub    “hello”.gsub(/e/,’i’)
map      arr.map {|x| x+2}
collect  arr.collect {|x| x*2}

a=b=c=d=e=f=g=h=i=0
sailor_name_list = %w(joe, fred, jim, steve, frank, ed, bill, george, tom, 
	mike, al, ken, ralph, dave, paul, don, nick, larry, greg)
seaman_array = [s1,s2,s3,s4,s5,s6,s7,s8,s9,s10]
@crew_hash = {captain:a first:b mate:c navigator:d cook:e chief:f engineer:g quartermaster:h boatswain:i seaman:seaman_list}