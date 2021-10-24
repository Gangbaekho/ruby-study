users = [
    {user_name:"jinsoo",password:"jinsoo"},
    {user_name:"jin",password:"jin"},
    {user_name:"soo",password:"soo"}
]

def auth_user(user_name, password, list_of_users)
    list_of_users.each do |user|
        if user[:user_name] == user_name && user[:password] == password
            return user
        end
    end
    return "Authentication failed."
end


puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input from the user and compare password"
puts "If passwor is correct, you will get back the user object"

# command = ""
# while command != "n"
#     puts "Enter your user name"
#     user_name = gets.chomp
#     puts "Enter your password"
#     password = gets.chomp

#     if users[user_name] == password
#         puts "Authenticated" 
#         command = "n"
#     else
#         "if you enter n, you have one more chance to write or escape program"
#         command = gets.chomp
#     end
# end

attemps = 1
while attemps < 4
    print "Username : "
    user_name = gets.chomp
    print "Password : "
    password = gets.chomp

    authenticated_user = auth_user(user_name,password,users)
    put authenticated_user
    puts "Press n to quit or any other key to continue"
    
    #LowerCase()가 downcase로 하는거군.
    input = gets.chomp.downcase

    # 이것도 영어 어순이네
    break if input == "n"
    attemps += 1
end

