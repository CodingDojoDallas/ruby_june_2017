

#>>> One <<<
def one
  (1..255).each do |i|
    puts i
  end
end
#>>> Two <<<
def two
  (1..255).each do |i|
    unless i.even? == true
    puts i
    end
  end
end
#>>> Three <<<
def three
  sum = 0
  (1..255).each do |i|
    puts "Adding: #{i}"
    sum += i
    puts "Sum: #{sum}"
  end
end
#>>> Four <<<
def four array
  array.each do |i|
    puts i
  end
end
#>>> Five <<<
def five array
  puts array.max
end
#>>> Six <<<
def six array
  sum = 0
  array.each do |i|
    sum += i
  end
  puts sum/array.length
end
#>>> Seven <<<
def seven array
  y = []
  array.each do |i|
    unless i.even? == true
    y.push(i)
    end
  end
  puts y
end
#>>> Eight <<<
def eight x, y
  counter = 0
  x.each do |i|
    unless i <= y == true
    counter += 1
    end
  end
  puts counter
end
#>>> Nine <<<
def nine x
  x.map! {|i| i*i}
  puts x
end
#>>> Ten <<<
def ten x
  x.map! {|i|
    if i < 0
      i = 0
    else
      i = i
    end
    }
  puts x
end
#>>> Eleven <<<
def eleven array
  sum = 0
  array.each do |i|
    sum += i
  end
  puts array.max
  puts array.min
  puts sum/array.length
end
#>>> Twelve <<<
def twelve x
  x.rotate!(1)[x.length-1] = 0
  puts x
end
#>>> Thirteen <<<
def thirteen x
  x.map! {|i|
    if i < 0
      i = 'Dojo'
    else
      i = i
    end
    }
  puts x
end






##
