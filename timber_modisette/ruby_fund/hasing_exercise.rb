# our_hash = {first_name:"coding", last_name:"dojo"}
#
# # puts our_hash
#
# def new_user user = {first_name: "", last_name: ""}
#   puts "Welcome to our site, #{user[:first_name]} #{user[:last_name]}!"
# end
#
# our_user = {first_name:"timber",last_name:"modisette"}
#
# new_user (our_user)


def new_user greeting="Welcome", first_name: "first", last_name: "last"
    puts "#{greeting}, #{first_name} #{last_name}"
end
our_user = {first_name: "Oscar", last_name: "Vazquez"}
new_user("Hello", our_user) # => Hello, Oscar Vazquez
