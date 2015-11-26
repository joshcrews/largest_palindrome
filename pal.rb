class Pal

	def self.is_palindrome? num 
		num_str = num.to_s
		num_str == num_str.reverse
	end

	def self.find_largest_palindrome(number)		
		upper_bound = 10 ** (number) -1
		lower_bound = [upper_bound - 1000, (upper_bound * 0.9991).to_i].min # 10 ** (number - 1)

		integer_pairs_to_try = []

		upper_bound.downto(lower_bound).each do |first_integer|
			next if first_integer % 2 == 0
			next if first_integer % 5 == 0
			first_integer.downto(lower_bound).each do |second_integer|
				next if second_integer % 2 == 0
				next if second_integer % 5 == 0
				if (first_integer % 10) * (second_integer % 10) == 9
					integer_pairs_to_try << [first_integer, second_integer]
				end
			end
		end

		sorted_integer_pairs_to_try = integer_pairs_to_try.sort_by{|first, second| first + second}.reverse

		sorted_integer_pairs_to_try.each do |first_integer, second_integer|
			product = first_integer * second_integer
			if is_palindrome?(product)
				return product
			end
		end

		nil

	end

end