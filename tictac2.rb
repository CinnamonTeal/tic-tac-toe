

=begin

Second attempt with a simple tic tac toe game, this time without trying to use a library like gosu. 

The Plan: (1st draft)
At first I am thinking about how to draw a grid in terminal, perhaps using puts or something like that. 
Then I need to figure out how to assign regions to that grid, maybe using an array or something. I want
to prompt the user to first choose 'X' or 'O', assign that to a variable which they will use whenever
they make a move, and from then on prompt the user to choose their region in the grid. At the moment
I can't think of a cleaner way other than asking the user to specifically enter "A2" or "B3" etc. 
I will need a loop, that ends when someone gets 3 in a row, and it will need to check that after each turn.
A loop (or loops) will have to: 1) prompt the user for their move, 2) check to see if they have made 3
in a row yet, 3) if not, then let the computer move, 4) check to see if 3 in a row yet, if not then
5) prompt the user again for their move, 6) check again and so forth. 

I need a way to define "3 in a row" in order to end the loop. I could probably write an ugly list of 
conditions, that if anyone was true, would end the loop. For example if A1,A2,A3 are the same value...
that seems cumbersome though, because there are a lot of possible conditions I'd have to list...
	
=end

puts "Welcome to Tic Tac Toe! Please type 'x' or 'o' to select your player."
user = gets.chomp

while user != 'x' && user != 'o'
	puts "Hey, this ain't burger king! You can't have it your way! Type 'x' or 'o'."
	user = gets.chomp
end	
	puts "Great! You're '#{user}'. Traditionally, 'o' gets to go first."
	if user == "o"
		puts "That means you get to go first!"
		puts " "
		puts "The tic tac toe board is divided into a 9 square grid."
		puts "To make a move, please type the coordinates you choose, with the letter first, then the number."
		puts "For example: 'c3' is a valid move, but not 3c."
		umove = gets.chomp	
	else user == 'x'
		puts "That means I get to go first."
	end

puts "   
   1  2  3
A __|__|__
B __|__|__
C   |  |  
			"          # is this better to do as one string?



puts "   1  2  3"      # or as multiple strings? Maybe with multiple lines we can do string_to.a more easily?
puts "A __|__|__"
puts "B __|__|__"
puts "C   |  |  "







# I need something that allows me to take input from a user, and put a predetermined variable into an array,
# according to whatever the user just input. For example, user types 'a2' and I need to put an 'x' in
# position a2 of the array, or the hash, or whatever...  

=begin
so it needs to look like

user = x 
puts "your turn, type your coordinates"
user_move = gets.chomp 


=end

=begin
oh yeah, and I need an if user == x, then computer == o and vice versa statement somewhere, to make sure
I can assign the opposite character to the array for each computer move

and I will also need a way to limit the next move to available spaces, so that moves don't overwrite each other


=end





