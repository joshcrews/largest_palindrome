require_relative '../pal'

describe Pal do
	describe '#is_palindrome?' do

		it 'returns true for an even digit length palindrome' do
			expect(Pal.is_palindrome? 11).to be true
		end

		it 'returns true for an odd digit length palindrome' do
			expect(Pal.is_palindrome? 101).to be true
		end

		it 'returns true for a palindrome of length 1' do
			expect(Pal.is_palindrome? 1).to be true
		end

		it 'returns false for a non-palindrome input' do
			expect(Pal.is_palindrome? 123).to be false
		end
	end

	describe '#has_factors_in_range?' do

		context 'range = (100..999)'
			
			it 'returns true for the largest value in range' do
				test_val = 999 ** 2
				expect(Pal.has_factors_in_range? test_val, 100, 999).to be true
			end

			it 'returns false for factors above range' do
				test_val = 1000**2
				expect(Pal.has_factors_in_range? test_val, 100, 999).to be false
			end

			it 'returns false for factors below range' do
				test_val = 10**2
				expect(Pal.has_factors_in_range? test_val, 100, 999).to be false
			end
	end

	describe '#find_largest_palindrome' do

		it 'returns 906609 for 3' do
			expect(Pal.find_largest_palindrome 3).to eq 906609
		end

		it 'returns 99000099 for 4' do
			expect(Pal.find_largest_palindrome 4).to eq 99000099
		end

		
		it 'returns 9966006699 for 5' do
			expect(Pal.find_largest_palindrome 5).to eq 9966006699
		end		



	end

end