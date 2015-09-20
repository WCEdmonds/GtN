require 'pry'

tries = 3
  random_number = rand(1..10)
  binding.pry
puts "What is your name?"
name = gets.strip

puts "Hello" + " " + name + "!"

puts "Want to play a game, " + name + "?"
answer = gets.strip.downcase

if answer == "yes"
  print 'Great!'

  loop do
      print "I'm thinking of a number..."
      print "Can you guess it? "
      guess = gets.to_i

      if tries == 1
        puts "It was #{random_number}. You are out of tries. You lose, #{name}. :("
        break
      end
      if guess < random_number
          tries -= 1
          puts "My number's bigger than that. You have #{tries} left. Try again."

      elsif guess > random_number
          tries -= 1
          puts "My number's smaller than that. You have #{tries} left. Try again."
      elsif guess == random_number
        puts  "Wow! You got it, #{name}! :)"

            break
          end
      end
  end
