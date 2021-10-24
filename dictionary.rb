
# Hash or Dictionary
# Key and Value
# javascript는 :로 하는데
# 이건 => 로 하는구나.

sample_hash = {
    'a' => 1, 
    'b' => 2, 
    'c' => 3
}

p sample_hash

# 이건 javascript랑 같고
p sample_hash['a']

# 보통은 Key에 String을 쓰는경우가 많긴 한데
# Ruby에서는 Symbol이라는 것을 제공한다.
# Identity와 관련있다는것인데 이건 나중에 더 알아봐야겠다.
another_hash = {a:1, b:2, c:3}
p another_hash

# 이런식으로 :을 써서 Symbol을 표현한다고
# 생각하면 된다.
p another_hash[:a]

# key만 골라내는거고
p sample_hash.keys

# value만 골라내는거고
p sample_hash.values

# 이런식으로 key, value를 둘 다 꺼낼 수 있는 것이구나.
# 뭐 결국 자바의 Map이랑 같은 개념이라서 괜찮은 것 같다.
sample_hash.each do |key,value|
    puts "The class for key is #{key.class} and the value is #{value.class}"
end

# javascript 처럼 동적으로 key value를 추가할 수 있다는 것
# 이것도 체크하면 될 것 같다.
my_hash = {a:1, b:2, c:3, d:4}
my_hash[:e] = "jinsoo"

p my_hash

my_hash[:c] = "Ruby"

p my_hash

my_hash.each do |key,value| 
    puts "The key is #{key} and the value is #{value}"
end

my_hash.select do |key,value|
    if value.is_a?(String)
        puts "Value is #{value}"
    end
end

# 음 영어 어순을 그대로 따르네
# 한줄로 쓰려고 하다보니까 이렇게 되는 것 같긴 한데 말이다.
# if end를 쓰는게 맞는 것 같은데 그러면 두 라인을 차지하니까
# 한 줄로 쓸떄는 이렇게 영어의 어순에 맞게 프로그래밍을 한 것 같다.
# 원어민 입장에서는 편하지만 한국인으로써는 좀 그렇다.
# 원칙이 하나가 아니라는 것은 좀 별로인 것 같다는 생각이 든다.
# delete도 챙기면 될 것 같다.
my_hash.each {|key,value| my_hash.delete(key) if value.is_a?(String)}
p my_hash


