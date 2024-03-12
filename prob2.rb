ROOM_POINTS = [5, 10, 15]

total_points = 0

puts "Welcome to the Adventure Game!"
puts "You have #{total_points} points."

loop do
  puts "Choose a room (1-3) to enter or 'exit' to end the game:"
  choice = gets.chomp.downcase

  break if choice == 'exit'

  room_number = choice.to_i

  if room_number.between?(1, 3)
    points = ROOM_POINTS[room_number - 1]

    total_points += points

    puts "You entered Room #{room_number} and earned #{points} points."
  else
    puts "Invalid input. Please choose a room number between 1 and 3."
  end
end

puts "Game over! You collected a total of #{total_points} points."
