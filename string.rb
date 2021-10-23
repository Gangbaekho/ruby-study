
# String 은 "" 나 '' 둘 다 써도 된다
# 이건 자바스크립트랑 비슷하네
first_name = "jinsoo"
last_name = "kim"

puts first_name + " " + last_name

# String interpolation
# javascript의 template string이랑 같은 개념이다.
# $가 아니라 #을 사용하는게 다르네
# 주의해야 할 것은 String interpolation을 사용하려면은 ""을 사용해야 함.
# ''으로 하면 안된다는거구나. `` 처럼 아예 다른걸 썼으면 더 좋았을텐데
# 이점이 아쉽네, 그냥 String은 ""로 쓰는게 낫겠다.
puts "My first name is #{first_name} and my last name is #{last_name}"

full_name = first_name + " "+ last_name

puts "My full name is #{full_name}"

# 커맨드에 irb를 치면은 인터렉티브한 루비 실행환경을 얻을 수 있다.

# 변수의 타입을 알려면은 이렇게 .class를 찍으면 된다.
# type of 랑 같은 개념이다. 
# ruby는 모든것이 object라는것도 알아두자. 원시타입도 다 오브젝트인건가.
# 이 부분은 자바랑 다른것일까.
puts full_name.class

# full_name.methods 찍으면은 모든 메소드를 볼 수 있다.

my_num = 10

# 헷갈리는게 .이라고만 해서 이게 value를 찍는건지 
# 함수를 call하는건지 좀 헷갈리는 것 같다.
# 구분을 어떻게 하는거지.()를 안붙여서 헷갈림
# to_s 이랑 class 이거 다 method인듯.
puts my_num.to_s.class

puts full_name.length

puts full_name.reverse

puts full_name.capitalize

# boolean을 return하는것은 ? 물음표를 다네
# 재밋는 언어네 실제 언어랑 비슷한 것 같다.
puts full_name.empty?

puts "".empty?

puts "".nil?

puts nil.nil?

sentence = "Welcome to the jungle"

# replace인가보다. sub라고 하는게 좀 이상하긴 하네
puts sentence.sub("the jungle","utopia")

# object라서 레퍼런스를 공유하는게 아니라 값만 준다?
# 이건 좀 다른개념이네.  pass by value?
new_first_name = first_name

puts new_first_name

# \를 넣어서 template string 처럼 되지 않음
# ${}를 그대로 나타내고 싶을때 사용하는건데 그리 많이 사용하지는 않을듯.
backslash = "the new first name is \#{new_first_name}"
puts backslash

hello = "Jinsoo asked 'Hey johh, how are you doing?'"
puts hello