def guessNumber int
  number = rand(5).floor
  puts number
  if int == number
    puts "Correct"

  else
      if int < number
        puts "Low"
      elsif int > number
        puts "High"
      end

  end
end

guessNumber 4
