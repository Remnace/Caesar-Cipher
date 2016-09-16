def cipher(input_in, shift_in)
	encrypted = ""
	input_in.each_char do |letter|
		shift_in.times do
			if letter == 'z'
				letter = 'a'
			elsif letter == 'Z'
				letter = 'A'
			else
				letter.next!
			end
		end
		encrypted += letter
	end
	return encrypted
end

puts("Please enter a string: ")
input = gets
puts("Please enter a shift factor:")
shift = gets.chomp.to_i
puts("\nEndrypted string: " + cipher(input, shift))