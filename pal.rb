class Pal

	def self.is_palindrome? num 
		num_str = num.to_s
		num_str == num_str.reverse
	end

	def self.has_factors_in_range_and_given_length?(num, upper_bound, length)
		upper_bound.downto(Math.sqrt(num).to_i) do |divisor|
			if ((num % divisor == 0) && (num / divisor).to_s.length == length)
				return true
			end
		end
		false
	end

	def self.find_largest_palindrome(number)

		lower_bound = 10 ** (number - 1)
		upper_bound = 10 ** (number) -1

		puts lower_bound
		puts upper_bound

		(upper_bound ** 2).downto(lower_bound ** 2) do |trial_number|
			puts trial_number
			if is_palindrome?(trial_number)
				puts "  #{trial_number}"
				if has_factors_in_range_and_given_length?(trial_number, upper_bound, number)
					return trial_number
				end
			end
		end
		nil
	end

end