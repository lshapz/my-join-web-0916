class Array
	def my_join(arg="")
		each.with_index.each_with_object("") do |(c, i), s|
			c = i == 0 ? "#{c}" : "#{arg}#{c}" 
			s << c
		end
	end
end