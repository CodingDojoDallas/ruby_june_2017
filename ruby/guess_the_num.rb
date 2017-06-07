def guess_numbergues(guess)
	num = 25
	if guess == num
		return "you got it"

	elsif guess > num
		return "guess is too high"

	else
		return "Guess is too low"
	end

end


#calling the funciton
puts "Guess a number: "
guess = gets.chomp
puts guess_numbergues(guess.to_i)
