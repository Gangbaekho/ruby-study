# require를 쓰는 것은 Node.js에서 하는것이랑 되게 비슷하네
require 'bcrypt'

# 이 문법은 뭐지 자바의 람다에서 쓰는거랑 비슷해보이긴 하는데
my_password = BCrypt::Password.create("my password")

puts my_password.version
puts my_password.cost

# 따로 encode method를 쓰지 않고 == 으로 비교하는건
# ruby의 특징인 것 같다. 직관적으로 표현하는 것을 좋아하나보네 이 언어는
# == 연산자를 특정 object에서는 다르게 동작하도록 만든 것일지도 모르겠다.
# equals method를 재정의 하듯이 말이다.

puts my_password == "my password"
puts my_password == "not my password"
