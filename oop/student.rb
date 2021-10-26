require 'bcrypt'

# class는 CamelCase를 사용한다는 것
# field들은 @를 써서 사용해야 한다는 것.
class Student

    # field의 getter와 setter를 만들어주는 역할을 한다
    # lombok 처럼 자동으로 해주는 기능은 없나. 이것조차 귀찮긴 한데 말이다.
    # 이것도 field들을 명시할 수 있지만 확실한건 아니라서 좀 그렇네.
    attr_accessor :first_name, :last_name, :username, :email, :password

    # 이건 getter만 만들어주는 것이라고 생각하면 된다.
    # attr_reader :first_name, :last_name, :email, :username

    # 생성자를 작성하면은 굳이 field들을 적어주지 않아도 된다는 것일까.
    # @first_name
    # @last_name
    # @email
    # @username
    # @passord

    # 여기에서 field들을 알 수 있찌만
    # 직접적으로 위처럼 명시하는게 더 좋다고 생각한다
    def initialize(first_name,last_name,username,email,password)
        @first_name = first_name
        @last_name = last_name
        @username = username
        @email = email
        @password = password
    end


    # # 이게 setter인데 모양이 좀 특이하네..
    # def first_name=(name)

    #     @first_name = name
    # end

    # # 이게 getter이다.
    # def first_name
        
    #     @first_name
    # end

    # 이게 toString() 역할을 하는 것이다.
    def to_s
        "First name: #{@first_name} " + "Last name : #{@last_name}!"
    end
end

jinsoo = Student.new("jinsoo","kim","nuitblanche","roorooro9933","password")
puts jinsoo

# 이건 public 처럼 직접 접근할 수 있을거라 생각했는데
# 기본적으로 private으로 설정되어 있는 것 같다.
# jinsoo.first_name = "jinsoo"
# puts jinsoo

# setter를 method 형태로 받지 않고 그냥 = 을 써서 사용하네
# 좀 특이한 것 같다.
# jinsoo.first_name = "jinsoo"
# jinsoo.last_name = "kim"
# jinsoo.email = "roorooro9933@gmail.com"
# jinsoo.username = "nuitblanche"
# puts jinsoo.first_name
# puts jinsoo.last_name
# puts jinsoo.email
# puts jinsoo.username

jinsoo = Student.new("jinsoo","kim","nuitblanche","roorooro9933@gmail.com","password1")
puts jinsoo