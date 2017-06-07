
#>>> One <<<
def one
  sum = 0
  x = [3,5,1,2,7,9,8,13,25,32]
  x.each do |i|
    sum += i
  end
  puts sum
  puts x.find_all { |i| i > 10 }
end
#>>> Two <<<
def two
  x = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']
  y = []
  x.shuffle.each do |i|
    if i.length > 5
      y.push(i)
    end
    puts i
  end
  puts '+++'
  puts y
end
#>>> Three <<<
def three
  alpha = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
  y = alpha.shuffle
  puts y.last
  if ['a','e','i','o','u','y'].include?(y.first)
    puts 'Vowel'
  end
  puts y.first
end
#>>> Four <<<
def four
  x = []
  (1..10).each do |i|
    x.push(rand(55..100).floor)
  end
  puts x
end
#>>> Five <<<
def five
  x = []
  (1..10).each do |i|
    x.push(rand(55..100).floor)
  end
  puts x.sort
  puts x.min
  puts x.max
end
#>>> Six <<<
def six
  alpha = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
  y = alpha.shuffle.slice(21, 5).join
  puts y
end
#>>> Seven <<<
def seven
  (1..10).each do |i|
    alpha = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
    y = alpha.shuffle.slice(21, 5).join
    puts y
  end
end
