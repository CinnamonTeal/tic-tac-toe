

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
puts "!!!!  Welcome to Tic Tac Toe  !!!!" 
puts ""
puts "Do you want to play against me (the computer) or a human?"
puts "Please type 'computer' or 'human.'"
mode = gets.chomp

while mode != "computer" &&  mode != "human"
	puts "Sorry, but you must type exactly the words 'computer' or 'human. Let's see if we can get it right this time."
	puts "Please type EXACTLY 'computer' or 'human.'"
	mode = gets.chomp
end


#--------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------

if mode == "computer"
	puts ""
	puts "--------------------------------------------------------------------------------------"
	puts "Great! Let's play!"
	puts "Please type 'x' or 'o' to select your player."
	user = gets.chomp

	while user != 'x' &&  user != 'o'
		puts "Hey, this ain't burger king! You can't have it your way! Type 'x' or 'o'."
		user = gets.chomp	# user gamepiece stored as user variable, so it can be called for each turn.
	end	

# Assign computer gamepiece
if user == "x"
	computer = "o"
else
	computer = "x"
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

#--------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------

elsif mode == "human"
	
		
	@player1 = "o"
	@player2 = "x"
	
	
	puts ""
	puts "--------------------------------------------------------------------------------------"
	puts "Aww, bummer. Okay then you two will have to take turns."		
	puts ""
	puts "Traditionally, 'o' gets to go first. So decide amongst yourselves who will be Player 1."
			
	puts " "
	puts "The tic tac toe board is divided into a 9 square grid."
	puts "   
	   0  1  2
	A __|__|__
	B __|__|__
	C   |  | 
				"   
=begin
	puts "To make a move, please type the row and column where you want to make your move:"
	# Prompting player1 for row, so ruby can determine which array to update.
	puts "Which row? (type a, b, or c)."
		1p_row = gets.chomp

		while 1p_row != "a"  && 1p_row != "b"  && 1p_row != "c"
			puts "Hey! Pay attention! Only a, b, or c are valid choices."
			puts "Which row? (type a, b, or c)."	
			1p_row = gets.chomp
		end
	# Prompting the player1 for column, so ruby can determine which element in the array to update.	
	puts "Which column? (type 0, 1, or 2)."
		1p_column = gets.to_i		# I found an interesting bug here where entering a letter evaluates as 0 automatically.
		while 1p_column != 0  && 1p_column != 1  && 1p_column != 2
			puts "Hey! Follow instructions! Only 0, 1, or 2 are valid choices."
			puts "Which column? (type 0, 1, or 2)."
			1p_column = gets.to_i
		end
=end

	a = [" "," "," "]
	b = [" "," "," "]
	c = [" "," "," "]


	if user_row == "a"				# Should I make a class out of this? 
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

#--------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------




# scratch paper / workspace below (so I can experiment without breaking the code above)


# To-do:

# Make the human turn code loop until a certain number of turns, trading back and forth with computer turn
# Solve the problem toggling between human vs computer turn
# Fix the bug where gets.to_i allows any letter string to evaluate as 0 when prompting for column selection.

# Create an if user == x, then computer == o and vice versa statement somewhere, to make sure
# 		I can assign the opposite character to the array for each computer move

# Figure out how to limit the new moves to available spaces, so that moves don't overwrite each other.

# Write different turn taking mechanism for 2 player mode (toggle between player 1 and 2 turns).
# 		(will need variables for player 1 and player 2 in human vs human mode.)


# isn't there some way I can create a class, and then just call instances of that class, rather than
#  		having doubles of practically all of my code?



# Human-move class, so I can call instanes of this rather than repeating it every time I wanna use it.
class H_Move
	def initialize
		puts "To make a move, please type the row and column where you want to make your move:"
		# Prompting the user for row, so ruby can determine which array to update.
		puts "Which row? (type a, b, or c)."
			row = gets.chomp

			while row != "a"  && row != "b"  && row != "c"
				puts "Hey! Pay attention! Only a, b, or c are valid choices."
				puts "Which row? (type a, b, or c)."	
				row = gets.chomp
			end
		# Prompting the user for column, so ruby can determine which element in the array to update.	
		puts "Which column? (type 0, 1, or 2)."
			column = gets.to_i		# I found an interesting bug here where entering a letter evaluates as 0 automatically.
			while column != 0  && column != 1  && column != 2
				puts "Hey! Follow instructions! Only 0, 1, or 2 are valid choices."
				puts "Which column? (type 0, 1, or 2)."
				column = gets.to_i
			end	
	end
end

# Computer-move class
      # COMPUTER MOVE:

class C_move
	def initialize
		a.sample.attr_writer(computer)		# although it seems like attr_writer can be chained in this way, it might not be the best way to do this.

# better might be to:
# randomly select element from array
# then store that random selection in a(n instance?) variable
# then delete_at(stored random element)
# then << (computer)_at(stored random element)
	end
end


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
	4. http://www.sitepoint.com/tour-random-ruby/
		I found the ".sample" method for getting a random element from an array (to use as computer move).


=end
