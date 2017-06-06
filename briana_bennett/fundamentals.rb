def guess_number(guess)
	number = 25
	if guess < 25
		puts "your guess was too low"
	elsif guess > 25
		puts "your guess was too high"
	else
		puts 'your guess was right'
	end
end

guess_number 12
guess_number 25
guess_number 32