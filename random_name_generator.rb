all_the_humans = [
"Aaron Lewis",
"Adam Payne",
"Andrew Tran",
"Anh Nguyen",
"Ashley Bridges",
"Christopher Morris",
"Vicky Pham",
"Esther Csoke",
"Evelyn Paplauskas",
"Gary Ho",
"Gregory Martin",
"Harrison Powell",
"Harry Buisman",
"Hoang Hai Ho",
"Hugh Greethead",
"Jacob Colyvan",
"Jeremy Wu",
"Linda Ojinnaka",
"Ling Yen Lee",
"Martin Kennedy",
"Martin Valdivia",
"Matthew Molloy",
"Morgan Webb",
"Morgan Batterham",
"Nikki Waelkens",
"Oliver Mason",
"Patricia Pavia",
"Rederyck Vazquez",
"Rose Hernandez",
"Ross Baker",
"Ryan Cook",
"Vincent Lieu",
"Gini Thomas",
"Wendy Doan",
"Wilkins Cheng"]

continue = ["yes", "Yes", "Y", "y"]

selections = {}

quit = false
while !quit do
  person = all_the_humans.sample

  selections[person] ? selections[person] += 1 : selections[person] = 1
  for char in person.split("")
    system "printf #{char} | figlet" 
    sleep(0.5)
  end
  system "echo 'Would you like to select another name?' | lolcat"
  input = gets.chomp
  quit = continue.include?(input) ? false : true
  puts selections
end