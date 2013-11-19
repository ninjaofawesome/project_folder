#Magic 8-Ball

##Objective
#Use methods to keep our code DRY.

##Instructions
#Build a ruby program that when run will ask the user if they want to shake the eight ball.
#If the user answers yes, have it give a random message.
#If the user says no, have it end.


def shake
  messages = [
  "It is certain",
  "It is decidedly so",
  "Without a doubt",
  "Yes definitely",
  "You may rely on it",
  "As I see it yes",
  "Most likely",
  "Outlook good",
  "Yes",
  "Signs point to yes",
  "Reply hazy try again",
  "Ask again later",
  "Better not tell you now",
  "Cannot predict now",
  "Concentrate and ask again",
  "Don\'t count on it",
  "My reply is no",
  "My sources say no",
  "Outlook not so good",
  "Very doubtful"
  ]
  puts messages.sample
end

def magic_8_ball()
  puts "Do you want to shake the eight ball and get an answer to your question?"
  will_play = gets.chomp.downcase
    if will_play == "yes"
      shake
    elsif will_play == "no"
      puts "No problem. Come back when you want to play."
    else
      puts "Sorry, I didn't understand you."
      magic_8_ball
    end
end

magic_8_ball()