def guess_number guess
  number = 25

  if guess < number
    puts "Guess was too low!"
  elsif guess > number
    puts "Guess was too high!"
  else
    puts "Correct! Brilliant!"
  end
end

guess_number(10)
