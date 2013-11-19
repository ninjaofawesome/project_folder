Magic 8-Ball

##Objective
#Use methods to keep our code DRY.

##Instructions
#Build a ruby program that when run will ask the user if they want to shake the eight ball.
#If the user answers yes, have it give a random message.
#If the user says no, have it end.


def response_generator number
  case number
  when 1
    "It is certain"
  when 2
    "It is decidedly so"
  when 3
    "Without a doubt"
  when 4
    "Yes definitely"
  when 5
    "You may rely on it"
  when 6
    "As I see it yes"
  when 7
    "Most likely"
  when 8
    "Outlook good"
  when 9
    "Yes"
  when 10
    "Signs point to yes"
  when 11
    "Reply hazy try again"
  when 12
    "Ask again later"
  when 13
    "Better not tell you now"
  when 14
    "Cannot predict now"
  when 15
    "Concentrate and ask again"
  when 16
    "Don't count on it"
  when 17
    "My reply is no"
  when 18
    "My sources say no"
  when 19
    "Outlook not so good"
  when 20
    "Very doubtful"
  end
end


def magic_eight_ball 
  puts "Magic Eight Ball: Ask me a yes and no question"
  question = gets.chomp
  puts "Question: #{question}"
  puts "#{response_generator(rand(1..20))}"
end

def question
  puts "Do you want to shake the eight ball? (y/n)"
end
