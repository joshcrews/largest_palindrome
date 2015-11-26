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

		it 'returns 9966006699 for 6' do
			expect(Pal.find_largest_palindrome 6).to eq 999000000999
		end

		it 'returns 9966006699 for 7' do
			expect(Pal.find_largest_palindrome 7).to eq 99901611610999
		end

		it 'returns 9966006699 for 8' do
			expect(Pal.find_largest_palindrome 8).to eq 9999000000009999
		end

		# it 'returns 9966006699 for 9' do
		# 	expect(Pal.find_largest_palindrome 5).to eq 9966006699
		# end

		# it 'returns 9966006699 for 10' do
		# 	expect(Pal.find_largest_palindrome 5).to eq 9966006699
		# end



	end

end