puts "understanding comparision haha"

# ==, !=, > , < , >= , <= ...

puts 10 == 9
puts 10 == 10
puts 10 == "10".to_i
puts 10 == 10.to_f

puts 10 != 9

# 주소값을 비교하는게 아닌가.
# value 값만 비교하나 java와 다르게
puts "hello" == "hello"

hello_one = "hello"
hello_two = "hello"

# 이걸 보니까 값 비교인 것 같다.
# Object면은 주소값을 비교하는 Java와는 다르네
puts hello_one == hello_two

arg = 13

# object라더니 call by value네
# call by referece 개념이 없는건지
# 아니면 숫자는 call by value인지 나중에 object 나오면 확인해보자
def call_by_value_test(value)
    value = 2
end

puts arg

# 이게 true가 나오네. 
# 느슨하게 비교하는건가.
# javascript의 == 이랑 비슷한것 같고
puts 10 == 10.0 

# 이거는 type까지 비교하기 때문에
# false가 나오는건가보다.
# javascript의 === 이랑 비슷한 것 같다.
puts 10.eql?(10.0)

