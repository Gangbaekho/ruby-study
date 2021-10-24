# if/else

# if else 는 같은데 괄호를 쓰지 않는다는 것과
# end를 적어줘야 한다는게 다른거구나.
# end 가 {} 역할을 한다고 보면 될 것 같다.

condition = false
another_condition = true

# 논리 연산자는 자바랑 같은 것 같다. ! && || 이런거.
# ()를 써서 우선순위를 나타내도 상관은 없다.
# 필요할때만 쓰면 될 것 같다.
if condition || another_condition
    puts "this evaluated to true"
else
    puts "this evaluated to false"
end

puts "La la la"

name = "jinsoo"

# else if가
# elsif네 이건 좀 안이쁘네
if name === "jinsoo"
    puts "Welcom to the program, jinsoo"
elsif name === "Jack"
    puts " Welcome th toe program, Jack"
else
    puts "Welcome to the program, User"
end


puts "Simple calculator"
20.times {print "-"}
puts "Please enter your first number"
first_num = gets.chomp
puts "Please enter your second number"
second_num = gets.chomp
puts "What do you want to do?"
puts "Enter 1 for *, 2 for +, 3 for -"

user_entry = gets.chomp
if user_entry == "1"
    puts "#{first_num.to_f * second_num.to_f}"
elsif user_entry == "2"
    puts "#{first_num.to_f / second_num.to_f}"
elsif user_entry == "3"
    puts "#{first_num.to_f - second_num.to_f}"
end
