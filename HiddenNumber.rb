  random_number = rand(1..10)
puts "What is your name?"
name = gets.strip

puts "Hello" + " " + name + "!"

puts "Want to play a game, " + name + "?"
answer = gets.strip

if answer == "yes"
  print 'Great!'

  loop do
      print "I'm thinking of a number..."
      print "Can you guess it? "
      guess = gets.to_i

      if guess < random_number
          puts "My number's bigger than that. Try again."
      elsif guess > random_number
          puts "My number's smaller than that. Try again."
      else
        puts  "Wow! You got it!"
        exit
      end
  end
end
