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
  puts "The computer selected: #{CASES[computer_play]}"
  if(user_play =="r") && (computer_play == "r")
    result = "DRAW.. we both selected rock"
  elsif (user_play =="r") && (computer_play == "p")
    result = "Sorry you lose, You select rock and computer has paper"
  elsif (user_play =="r") && (computer_play == "s")
    result = "Boo, you win.  you selected rock and I selected scissors.. rock SMASHES scissors"
  elsif  (user_play =="p") && (computer_play == "r") 
    result = "Boo.. you win paper covers rock"
  elsif  (user_play =="p") && (computer_play == "p") 
    result = "Draw :) we both selected paper"  
  elsif  (user_play =="p") && (computer_play == "s") 
    result = "Yeah I win scissors cuts paper"
  elsif  (user_play =="s") && (computer_play == "r") 
    result = "you lose, Rock SMASHES scissors"  
  elsif  (user_play =="s") && (computer_play == "s") 
    result = "Draw, we both selected scissors"        
  elsif  (user_play =="s") && (computer_play == "p") 
    result = "Boo..  scissors cut paper"    
  end 

  puts result 
  puts "do you want to play again y/n"
  answer = gets.chomp.downcase
  if answer != "y" 
    break
  end
end      



  