class Pal

	def self.is_palindrome? num 
		num_str = num.to_s
		num_str == num_str.reverse
	end

	def self.has_factors_in_range_and_given_length? num, upper_bound, length
		upper_bound.downto(Math.sqrt(num).to_i) do |divisor|
			if ((num % divisor == 0) && (num / divisor).to_s.length == length)
				return true
			end
		end
		false
	end

	def self.find_largest_palindrome n

		lower_bound = 10**(n-1)
		upper_bound = 10**(n) -1

		(upper_bound**2).downto(lower_bound**2) do |num|
			if ((is_palindrome? num) && has_factors_in_range_and_given_length?(num, upper_bound, n))
				return num
			end
		end
		nil
	end

end









