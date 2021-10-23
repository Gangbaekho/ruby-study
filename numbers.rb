puts 1 + 2

x = 3
y = 10

# java와 비슷하게 integer로 나누면은 몫만 나온다.
puts y / x

puts "5".to_i * 5

# 이건 55.
puts "5"*2

puts "I am a line"
puts "-" * 20

# 이게 for문이랑 비슷한건가보다.
puts "I am a different line after a divider"
20.times { print "-" }

# 0 ~ 9까지 랜덤넘버
20.times {puts rand(10)}

# rand는 소수를 반환한다.
# 0 <= x < 1 
puts rand

puts "5" * rand(100)

puts "Simple calcaulator"
puts
25.times { print "-"}

puts "Enter first number"

num_one = gets.chomp

puts "Enter second number"

num_two = gets.chomp

puts "The first number multiplied by the second number is #{num_one.to_i * num_two.to_i}"