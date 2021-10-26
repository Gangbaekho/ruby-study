# 이걸 사용해도 되고
# 지금은 같은 디렉토리에 있기 떄문에 relative를 사용하는것이
# 편하다. 아마 계속 이걸 쓰지 않을까 생각한다.
# LOAD_PATH를 붙이는 것도 일이니까 말이다.
require_relative 'crud-module'

# 이걸 사용해도 된다.
# $LOAD_PATH << "."
# require 'crud-module'

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

hashed_users = Crud.create_secure_users(users)
puts hashed_users