def multiply(first_num, second_num)
    # last evaluated number automatically return.
    # 또는 return number를 써도 되긴 함.
    first_num.to_f * second_num.to_f
end

def devide(first_num, second_num)
    first_num.to_f / second_num.to_f
end

def substract(first_num, second_num)
    first_num.to_f - second_num.to_f
end


puts
puts "Please enter your first number"
first_number = gets.chomp
puts "Please enter your second number"
second_number = gets.chomp

puts "The first number multiplied by second number is #{multiply(first_number,second_number)}"
puts "The first number multiplied by second number is #{substract(first_number,second_number)}"

