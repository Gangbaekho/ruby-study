
# Arrays
# ordered list of items
# maintains an index

# java처럼 array에 같은 타입을 넣어야 하는 것은 아님
# 다 다른 타입을 넣어도 문제가 되지 않는 듯
# javascript랑 비슷하다고 생각하면 된다.
arr = [1,2,3,4,5,6,7,8,9]
p arr

p arr.last

# 이건 Array가 아니라 Range라고 찍히네
x = 1..100

# 결과값이 Range임.
puts x.class

# Array로 바꾸려면은 to_a를 써야한다.
# 왜 이렇게 Range class를 따로 만든걸까. 

# shuffle 이런거는 편하네.
# Array의 method인가보다
p x.to_a.shuffle


# shuffle이나 reverse는 새로운 array를 리턴하는 것이지
# 원본을 바꾸는게 아니라는 점을 기억해주면 된다.
shuffle_arr = x.to_a.shuffle
p "Shuffle_arr"
p shuffle_arr

p shuffle_arr.reverse

p "Shuffle_arr once again"
p shuffle_arr

# !를 마지막에 붙이면은 return 하는 것이 아니라 
# 원본이 바뀐다는 것을 기억하면 될 듯.
# shuffle이나 reverse에 적용할 수 있다.

shuffle_arr.reverse!
p shuffle_arr

# 이렇게 문자도 Range가 가능한다는 것을 알 수 있다.
alphas = "a".."z"
p alphas.to_a
p alphas.to_a.length

a = [1,2,3,4,5,6,7,8,9]
p a

# 이게 push 역할을 하는 연산자라고 생각하면 되는구나.
# 헷갈려서 그렇지 나쁘지는 않은 듯 하다.
a << 10
p a

# 이건 javacript의 unshift와 같네
a.unshift("jinsoo")
p a

# 이건 push랑 같은거다.
a.append("jinsoo")
p a

# 같은 jinsoo를 제외하고 set과 같이 만들어주는 것이라고 생각하면 됫 듯.
# 물론 순서는 존재하지만 말이다.
p a.uniq

p a.empty?

b = []

p b.empty?

p a.include?("jinsoo")

# 이건 또 push랑 같네.
# 근데 이건 스택관점에서 추가하는 것임.
a.push("new item")

p a.pop

p a

# 모든 엘리먼트를 String으로 연결한다.
p a.join

p a.join("-")

# 모았다가 다시 split 하는거다.
b = a.join("-")

p b.split("-")

# space로 split을 하떄는 %w라는것을 사용해도 된다.
# 뭐 이건 기억 못 할 것 같다. 그냥 split(" ")을 쓸것 같긴 하다.
split_with_space = %w("hello world")

p split_with_space

# Iterator
for i in b.split("-")
    p i
end

# javascript의 for each랑 비슷한데 
# javascript는 arrow function을 주는데 결국 이거랑 같은데
# javascript 문법이 더 나은 것 같다는 생각이 든다.
# 문법이 조금 특이한 것 같다.
b.split("-").each do |food|
    print food + " "
end

# 뭐 이런식을 사용해도 된다는 것인데
# {}를 애초에 여기서 별로 안쓰는 것 같은데
# 굳이 이렇게 하는것 보다 위에것을 사용하는게 더 나은 듯
# 보통 한줄일떄는 이렇게 하는 것 같다.
b.split("-").each { |food| print food + " "}


# javascript의 filter와 같네
# 이름만 좀 외워주면 되겠다.
z = (1..100).to_a.shuffle
odds = z.select {|number| number.odd?}

odds.each{|odd| p odd}

p z.methods