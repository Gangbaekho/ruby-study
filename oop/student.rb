# class는 CamelCase를 사용한다는 것
# field들은 @를 써서 사용해야 한다는 것.
class Student
    @first_name
    @last_name
    @email
    @username
    @passord

    # 이게 toString() 역할을 하는 것이다.
    def to_s
        "First name: #{@first_name}"
    end
end

jinsoo = Student.new
puts jinsoo
# jinsoo.first_name = "jinsoo"
# puts jinsoo