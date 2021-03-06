require 'bcrypt'

# my_password = BCrypt::Password.create("my password")
# puts my_password

# bcrypt의 특징은 create로 같은 비밀번호를 해도 인코딩은 다르게 나타날 수 있다.
# 하지만 비교를 하게되면은 같은걸로 한다.
# my_password = BCrypt::Password.new("$2a$12$7wYmkY0ocil4a1tVZVA3he6uXiMNgTGwL8JhCz4ucrlOYOF75bwa2")
# puts my_password == "my password"

my_password_1 = BCrypt::Password.create("my password")
my_password_2 = BCrypt::Password.create("my password")
my_password_3 = BCrypt::Password.create("my password")

puts my_password_1
puts my_password_2
puts my_password_3

# false
puts my_password_1 == my_password_2

# true 비교를 하려면은 origin password랑 비교를 해야 한다.
puts my_password_1 == "my password"


users = [
    {
        username: "jinsoo",
        password: "password1"
    },
    {
        username: "roorooro",
        password: "password2"
    }
]

def create_hash_digest(password)

    BCrypt::Password.create(password)
end

def verify_hash_digest(password)
    BCrypt::Password.new(password)
end

def create_secure_users(list_of_users)

    list_of_users.each do |user|
        user[:password] = create_hash_digest(user[:password])
        puts user[:password]
    end

    list_of_users
end


# using method to create hashed password
# new_password = create_hash_digest("password1")
# puts new_password

# 이건 call by reference네
# ruby의 전략이 좀 헷갈리는 듯 하다.
# puts create_secure_users(users)

# return type이 달라도 된다는 점과
# 인터프리터 언어이기 때문에 런타임시에 에러를 발견할 수 있다는 점은
# 루비의 단점이라고 생각한다.
def authenticate_user(username,password,list_of_users)
    list_of_users.each do |user|
        if user[:username] == username && create_hash_digest(user[:password]) == password

            # 여기는 user라는 object를 리턴하고
            return user
        end
    end

    # 여기는 String을 return 하네
    # return type이 다른것은 좋다고 생각하지 않는다.
    "Credentilas were not correct"
end

puts authenticate_user("jinsoo","password1",users)
puts authenticate_user("jinsoo","wrong password",users)