puts "What is your first name?"

# java의 scanner랑 같은거구나.
# 별로 쓸일은 없겠다.
first_name = gets.chomp

puts "Thank you , you said your first name is #{first_name}"

puts "What is your last name?"

last_name = gets.chomp

puts "Thank you , you said your last name is #{last_name}"

puts "Enter a number to multiply by 2"

# 이렇게 하면은 string으로 받아서
# 숫자로 바꾸려면은 to_i로 하면 된다.
# gets.chomp를 쓰면은 string을 받게 된다
input = gets.chomp
puts input.to_i * 2
