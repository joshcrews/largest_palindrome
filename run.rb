require './pal.rb'

puts "This program will accept a string length as an input and will output"
puts "the largest palindrome that has two factors of the input length."
puts "Enter the length of factors: "
n = gets.chomp.to_i


result = Pal.find_largest_palindrome n

puts result.nil? ? 'Could not find a solution' : result
