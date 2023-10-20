dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

def end_program()
  puts "Bye then! See you soon 👋"
  exit
end

def get_city_names(somehash)
  return somehash.keys
end

def get_area_code(somehash, key)
  return somehash[key]
end

inputs = 0

loop do
  if inputs === 0
    puts "Would you like to get the area code based on the city name? (Y/N)"
  else
    puts "Would you like to get another area code for a city? (Y/N)"
  end
  user_kickoff = gets.chomp
  end_program if user_kickoff.downcase != "y"
  puts "--- Here are the cities you can choose from 🌆 ---"
  puts get_city_names(dial_book)
  print "✏️ Please choose a city: "
  user_city_input = gets.chomp
  inputs += 1
  puts "🌆 #{user_city_input.capitalize()} has the code... #{get_area_code(dial_book, user_city_input)} 🔢!"
  puts "---"
end