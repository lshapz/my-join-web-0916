class Array
	def my_join(arg="")
		final_string = ""
		self.each_with_index do |element, i|
			final_string << arg if i > 0
			final_string << element.to_s
		end
		final_string
	end
end