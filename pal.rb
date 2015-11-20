class Pal

	def self.is_palindrome? num 
		num_str = num.to_s
		num_str == num_str.reverse
	end

	def self.get_range_n_length_nums n
		if (n < 1)
			return nil
		end

		lower_bound = '1'
		(n-1).times do 
			lower_bound += '0'
		end
		upper_bound = ''
		n.times do 
			upper_bound += '9'
		end

		lower_bound = lower_bound.to_i
		upper_bound = upper_bound.to_i

		(lower_bound..upper_bound)

	end

	def self.has_factors_in_range? num, range_array
		range_array.each do |divisor|
			if ((num % divisor == 0) && range_array.find_index(num / divisor))
				return true
			end
		end
		false
	end


	def self.find_largest_palindrome n

		range = get_range_n_length_nums n

		range_array = range.to_a
		
		current_num = range.last * range.last

		while (current_num >= (range.first * range.first)) do
			if ((is_palindrome? current_num) && has_factors_in_range?(current_num, range_array))
				return current_num
			end
			current_num -= 1
		end
		nil
	end


end









