

# print 하는 방법
# ruby의 함수는 모두 리턴값이 있다. 
# 리턴값이 없다면 nil로 리턴이 된다는 특징이 있다.

# 리턴값이 void인것이 puts이다.
puts "Hello world"

# 리턴값이 인자값이다.
p "Hello world"

# 리턴값이 인자인가? java의 print와 같다고 생각하면 된다.
# end line이 없다고 생각하면 된다.
print "Hello world\n"

def say(thing_to_say)
    p thing_to_say
end

# 인자를 보내는데 ()를 안쓰는게 익숙하지 않네.
say "call say function"