class Array
	def my_join(arg="")
		self.each.with_index.each_with_object("") do |(element, i), string|
			element = i == 0 ? "#{element}" : "#{arg}#{element}" 
			string << element
		end
	end
end