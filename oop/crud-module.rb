
# module은 method들을 모아둔 것이라고 생각하면 될 듯한데
# Java의 Static methods들을 모아둔 class라고 생각하면 편할 것 같다.
module Crud
    require 'bcrypt'
    puts "Module CRUD activate"
    
    # 이런식으로 사용해야 한다는 것을 알아두자.
    # Crud를 붙임으로써 밖에서 사용할 수 있는 static method가 된다는 개념인 듯 하다.
    # Crud를 사용해도 되고 자신이 정의한 method이면은 self를 써도 된다는 개념임.
    # Crud나 self를 안붙이면은 instance method가 되어서
    # instance를 생성해야지만 사용할 수 있다는 개념이다.
    def Crud.create_hash_digest(password)

        BCrypt::Password.create(password)
    end

    def self.verify_hash_digest(password)
        BCrypt::Password.new(password)
    end

    def self.create_secure_users(list_of_users)

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
end