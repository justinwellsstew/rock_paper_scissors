# this application is a rock paper scissors game where the computer randoms selects a value after the user has entered input

puts "*********************Welcome to Rock, Paper, Scissors******************************"
puts "Type r to select rock, type p to select paper, and s to select scissors"
user_play = gets.chop
puts "You selected #{user_play}"

#computer_play = ""
random_number = 1 + rand(3)
if random_number == 1
  computer_play = "r"
elsif random_number == 2
  computer_play = "p"
else 
  computer_play = "s"
end 
puts "The computer selected: #{computer_play}"
# results =""
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



  