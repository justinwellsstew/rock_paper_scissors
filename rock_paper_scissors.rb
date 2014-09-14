# this application is a rock paper scissors game where the computer randoms selects a value after the user has entered input

CASES = {"r"=>"rock", "p"=>"paper", "s"=>"scissors"}

loop do
  puts "*********************Welcome to Rock, Paper, Scissors******************************"
  user_play = ""
  loop do
    puts 'Type "r" to select rock, type "p" to select paper, and "s" to select scissors'
    user_play = gets.chop.downcase
    if CASES.keys.include?(user_play)
      puts "You selected: #{CASES[user_play]}"
      break
    end
    puts "you selected #{user_play}, which is not a valid option"
  end  

  computer_play = CASES.keys.sample
  puts  "The computer selected: #{CASES[computer_play]}"
  if user_play == computer_play
    result  = " DRAW!!"
  elsif ((user_play =="s") && (computer_play == "r")) || ((user_play == 'r') && (computer_play =='s')) || ((user_play =='s') && (computer_play == 'p'))
    result = " You won!"
  else 
    result = " Computer won :("    
  end 

  puts result 
  puts "do you want to play again y/n"
  answer = gets.chomp.downcase
  if answer != "y" 
    break
  end
end      



  