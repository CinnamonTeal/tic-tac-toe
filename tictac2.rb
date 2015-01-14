

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
puts "******************************************************************************************"
puts ""
puts "!!!!Welcome to Tic Tac Toe!!!!" 
puts ""
puts "Do you want to play against me (the computer) or a human?"
puts "Please type 'computer' or 'human.'"
mode = gets.chomp

while mode != "computer" &&  mode != "human"
	puts "Sorry, but you must type exactly the words 'computer' or 'human. Let's see if we can get it right this time."
	puts "Please type EXACTLY 'computer' or 'human.'"
	mode = gets.chomp
end

if mode == "computer"
	puts ""
	puts "--------------------------------------------------------------------------------------"
	puts "Great! Let's play!"
	puts "Please type 'x' or 'o' to select your player."
	user = gets.chomp

	while user != 'x' &&  user != 'o'
		puts "Hey, this ain't burger king! You can't have it your way! Type 'x' or 'o'."
		user = gets.chomp
	end	
		puts ""
		puts "--------------------------------------------------------------------------------------"
		puts "Great! You're '#{user}'. Traditionally, 'o' gets to go first."
		if user == "o"
			puts "That means you get to go first!"
			puts " "
			puts "The tic tac toe board is divided into a 9 square grid."
			puts "   
	   0  1  2
	A __|__|__
	B __|__|__
	C   |  | 
				"   


			puts "To make a move, please type the row and column where you want to make your move:"
			# Prompting the user for row, so ruby can determine which array to update.
			puts "Which row? (type a, b, or c)."
				user_row = gets.chomp

				while user_row != "a"  && user_row != "b"  && user_row != "c"
					puts "Hey! Pay attention! Only a, b, or c are valid choices."
					puts "Which row? (type a, b, or c)."	
					user_row = gets.chomp
				end
			# Prompting the user for column, so ruby can determine which element in the array to update.	
			puts "Which column? (type 0, 1, or 2)."
				user_column = gets.to_i		# I found an interesting bug here where entering a letter evaluates as 0 automatically.
				while user_column != 0  && user_column != 1  && user_column != 2
					puts "Hey! Follow instructions! Only 0, 1, or 2 are valid choices."
					puts "Which column? (type 0, 1, or 2)."
					user_column = gets.to_i
				end

		else user == 'x'
			puts "That means I get to go first."
		end

	a = [" "," "," "]
	b = [" "," "," "]
	c = [" "," "," "]



	if user_row == "a"
		a.delete_at(user_column)
		a.insert(user_column, user)
	elsif user_row == "b"
		b.delete_at(user_column)
		b.insert(user_column, user)
	elsif user_row == "c"
		c.delete_at(user_column)
		c.insert(user_column, user)
	end
			
	p a, b, c			# prints arrays a, b, and c.



elsif mode == "human"
	puts ""
	puts "--------------------------------------------------------------------------------------"
	puts "Aww, bummer. Okay then you two will have to take turns."	
	puts "Please type 'x' or 'o' to select your player."
	user = gets.chomp

	while user != 'x' &&  user != 'o'
		puts "Hey, this ain't burger king! You can't have it your way! Type 'x' or 'o'."
		user = gets.chomp
	end	
		puts ""
		puts "--------------------------------------------------------------------------------------"
		puts "Great! You're '#{user}'. Traditionally, 'o' gets to go first."
		if user == "o"
			puts "That means you get to go first!"
			puts " "
			puts "The tic tac toe board is divided into a 9 square grid."
			puts "   
	   0  1  2
	A __|__|__
	B __|__|__
	C   |  | 
				"   

class Move  # maybe in the morning when I can think again I'll remember how I wanted to use this...
	def initialize(row, column)
		@row = row
		@column = column
	end
end

			puts "To make a move, please type the row and column where you want to make your move:"
			# Prompting the user for row, so ruby can determine which array to update.
			puts "Which row? (type a, b, or c)."
				user_row = gets.chomp

				while user_row != "a"  && user_row != "b"  && user_row != "c"
					puts "Hey! Pay attention! Only a, b, or c are valid choices."
					puts "Which row? (type a, b, or c)."	
					user_row = gets.chomp
				end
			# Prompting the user for column, so ruby can determine which element in the array to update.	
			puts "Which column? (type 0, 1, or 2)."
				user_column = gets.to_i		# I found an interesting bug here where entering a letter evaluates as 0 automatically.
				while user_column != 0  && user_column != 1  && user_column != 2
					puts "Hey! Follow instructions! Only 0, 1, or 2 are valid choices."
					puts "Which column? (type 0, 1, or 2)."
					user_column = gets.to_i
				end
		end
	a = [" "," "," "]
	b = [" "," "," "]
	c = [" "," "," "]


	if user_row == "a"
		a.delete_at(user_column)
		a.insert(user_column, user)
	elsif user_row == "b"
		b.delete_at(user_column)
		b.insert(user_column, user)
	elsif user_row == "c"
		c.delete_at(user_column)
		c.insert(user_column, user)
	end
		
	p a, b, c			# prints arrays a, b, and c.


end




# ok so 2 problems to solve right now: first, I need to make the loop go until a certain number of turns
# and second, I need to solve the problem of human vs computer turns, like, how to make the computer turn
# and/or prompt for two player mode. 

# isn't there some way I can create a class, and then just call instances of that class, rather than
# having doubles of practically all of my code?
      
=begin
a bit stumped right now... I wish I could figure out how to make the game look like this:

   0  1  2
A o_|x_|o_
B __|o_|o_
C x |  |x 

instead of like this: 

["o", " ", " "]
[" ", " ", "x"]
[" ", " ", " "]

=end



# I need something that allows me to take input from a user, and put a predetermined variable into an array,
# according to whatever the user just input. For example, user types 'a2' and I need to put an 'x' in
# position a2 of the array, or the hash, or whatever...  

# also it would be nice to have single player and 2 player mode, but that's less important, I can add that at the end if there's time...



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


=begin

Resources:
	1. http://www.ruby-doc.org/core-2.2.0/Array.html
		I looked here to see if there were methods I could use to take input from a user and update the array.
		I found something on Multi-Dimensional arrays.
		seems useful:
			- arr.at(0) #=> 1 		# using the 'at' method accesses a particular array element
			- arr.fetch(100, "oops") #=> "oops"		 # seems to raise an error when an arguemt given is beyond the array boundaries
			- push method updates array, I believe like: my_array.push(user_move)		# question is where in the array does this push to? 
				or is that what the argument is supposed to specify?
			- the << operator is also push. 
	2. http://www.peachpit.com/articles/article.aspx?p=1278994&seqNum=3
		I found the array.insert(element, content) method here.
	3. https://stackoverflow.com/questions/15784503/ruby-method-to-print-and-neat-an-array
		I found the p method for printing (and inspecting) an array


=end
