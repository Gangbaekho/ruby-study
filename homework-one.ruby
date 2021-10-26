dial_books = {
    "newyour" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "palinsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "301",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717" 
}

def get_city_names(some_hash)
end

def get_area_code(somehash, key)
end


# while 이랑 같은 건가.
# 조건이 따로 없고 break로 조정하겠다는 그런 의미인건가.
loop do
    puts "Do you want to lookup an area code based on a city name? (Y/N)"
    
    command = gets.chomp
    break if command == "N"

    puts "Which city do you want the area code for?"
    
    dial_books.each do |key, value|
        puts key
    end

    area = gets.chomp
    puts dial_books[area]

end
