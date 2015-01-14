=begin
Your mission is to make a simple Tic-Tac-Toe game with code. Just like last time,
	select a slot in the following calendar so we can review your code together:

1) You can use whatever language you'd like (we suggest Ruby or Javascript). 
2) Use whatever coding environment you'd like (jsfiddle.net is a good place to start for a 
	browser-based Javascript editor). You can even use TextEdit and just write code. Your choice. 
3) Use as many online resources as you like, but the challenge is meant to be completed alone, 
	so please don't take any outside help. 
4) On the front-end, there is no need to make it pretty. 
	We are looking to see how you approach solving it and breaking it down. 
5)Try to include comments in your code that explain your thinking and what decisions you've made. 

The point of this exercise is NOT to see if you can get it right, or find the answer on the internet.
It's to understand as much as possible and think through the steps of solving the problem. 
You're MUCH better off submitting code that doesn't work or is incomplete that you really thought 
through and understand, than code that you find online that just works. 

You'll go over whatever progress you have made with onf of our instructors and explain your thinking. 
=end


=begin
	Steps that I took:
		1. googled how to make a game in ruby, and found "rubygame"
		2. installed it using brew install sdl, according to the instructions on rubygems github documentation	
		3. installed SDL companion libraries, as recommended (despite being only vaguely aware of how I will use these)
		4. found general basic instructions for game creation at manwithcode.com
		5. tried to test first bit of code, ran into errors. 
		6. spent several hours updating xcode, brew, ruby, and troubleshooting various errors with rubygame
			most tenacious error seems to be with requiring 'rubygame', getting the following error and relevant call stack:
				$ ruby tictactoe.rb
/Users/happythunder/.rvm/gems/ruby-2.1.0/gems/ffi-1.9.6/lib/ffi/library.rb:377:in `callback': callbacks cannot have variadic parameters (ArgumentError)
	from /Users/happythunder/.rvm/gems/ruby-2.1.0/gems/ruby-sdl-ffi-0.4/lib/ruby-sdl-ffi/sdl/mac.rb:161:in `<module:ObjC>'
	from /Users/happythunder/.rvm/gems/ruby-2.1.0/gems/ruby-sdl-ffi-0.4/lib/ruby-sdl-ffi/sdl/mac.rb:153:in `<module:Mac>'
	from /Users/happythunder/.rvm/gems/ruby-2.1.0/gems/ruby-sdl-ffi-0.4/lib/ruby-sdl-ffi/sdl/mac.rb:49:in `<top (required)>'
	from /Users/happythunder/.rvm/rubies/ruby-2.1.0/lib/ruby/site_ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /Users/happythunder/.rvm/rubies/ruby-2.1.0/lib/ruby/site_ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /Users/happythunder/.rvm/gems/ruby-2.1.0/gems/ruby-sdl-ffi-0.4/lib/ruby-sdl-ffi/sdl.rb:80:in `block in <top (required)>'
	from /Users/happythunder/.rvm/gems/ruby-2.1.0/gems/ruby-sdl-ffi-0.4/lib/ruby-sdl-ffi/sdl.rb:79:in `each'
	from /Users/happythunder/.rvm/gems/ruby-2.1.0/gems/ruby-sdl-ffi-0.4/lib/ruby-sdl-ffi/sdl.rb:79:in `<top (required)>'
	from /Users/happythunder/.rvm/rubies/ruby-2.1.0/lib/ruby/site_ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /Users/happythunder/.rvm/rubies/ruby-2.1.0/lib/ruby/site_ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /Users/happythunder/.rvm/gems/ruby-2.1.0/gems/rubygame-2.6.4/lib/rubygame/main.rb:22:in `<top (required)>'
	from /Users/happythunder/.rvm/rubies/ruby-2.1.0/lib/ruby/site_ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /Users/happythunder/.rvm/rubies/ruby-2.1.0/lib/ruby/site_ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /Users/happythunder/.rvm/gems/ruby-2.1.0/gems/rubygame-2.6.4/lib/rubygame.rb:44:in `block in <top (required)>'
	from /Users/happythunder/.rvm/gems/ruby-2.1.0/gems/rubygame-2.6.4/lib/rubygame.rb:43:in `each'
	from /Users/happythunder/.rvm/gems/ruby-2.1.0/gems/rubygame-2.6.4/lib/rubygame.rb:43:in `<top (required)>'
	from /Users/happythunder/.rvm/rubies/ruby-2.1.0/lib/ruby/site_ruby/2.1.0/rubygems/core_ext/kernel_require.rb:135:in `require'
	from /Users/happythunder/.rvm/rubies/ruby-2.1.0/lib/ruby/site_ruby/2.1.0/rubygems/core_ext/kernel_require.rb:135:in `rescue in require'
	from /Users/happythunder/.rvm/rubies/ruby-2.1.0/lib/ruby/site_ruby/2.1.0/rubygems/core_ext/kernel_require.rb:144:in `require'
	from tictactoe.rb:37:in `<main>'
		7. After updating rvm and trying to open up each of the files in the call stack to see what's wrong, I figured that
			it's a waste of time since I have spent my whole day doing this, and it seems likely to be a problem
			with rubygame. So I am now going to attempt to switch to gosu instead of rubygame.
		8. Problem installing gosu, seems to require sdl2 libraries. Installing now.
		9. It worked! gosu working now (in the sense that I can actually run .rb files now), and the previous call stack errors are gone. Time for dinner ;p
		10. Finally back to writing actual code. Scrapping all the old code (rubygame code not relevant to gosu)
		11. https://github.com/jlnr/gosu/wiki/Ruby-Tutorial is useful documentation
		12. ran into an interesting error with the background image (see line 73), and learned that the image file must be in the same directory as the program (unless there is another way)
		13. learned what z ordering means; basically what gets drawn behind or on top (z axis).
		14. wow learning a lot. diving deep into documentation at http://www.libgosu.org/rdoc/frames.html#!file.README.html
		15. generally, everytime I add some code I am running it from terminal just to make sure it doesn't break before I keep adding more code.


=end

require 'gosu'

class Game < Gosu::Window 		# initializing a window seems to be the first step in every kind of documentation I found

	def initialize
		super 640, 480, false		# not sure why it's called 'super' (superimpose?), or why the third argument is 'false' (is third argument screen depth? and what is screen depth?) | update: third argument is fullscreen true or false.
		self.caption = "Tic-tac Snowden"		# changes the title of the window
		@background_image = Gosu::Image.new(self, "ice_veils.jpg", true)    # Right... I am going to need a background image. Gosu::Image takes 3 arguments: self ties the image to the window, then filepath of image, then true/false for borders.
	
		puts "Choose your player"
		player = gets.chomp


	end

class X				# figured I need a way to draw x's and o's, so I can define them as an object class and then call them if/when a player makes a move. adapting code from "Player" class in https://github.com/jlnr/gosu/wiki/Ruby-Tutorial 
	def initialize(window)				# I think the (window) argument here is to tie everything in this class to the Gosu::Window umbrella class...?
		@image = Gosu::Image.new(self, "tt.jpg", true)
	end
end

	def update

	end


	def draw
		@background_image.draw(0,0,0)
		@X

	end

end

tictactoe = Game.new
tictactoe.show



=begin 

I was looking for a way to draw the grid, not simply bg image, but actually 9 discreet areas where input/output can be taken.
	I tried using this code from the rdoc but couldn't make it work: + (Array<Gosu::Image>) load_tiles(window, source, tile_width, tile_height, tileable)
 
Then I want to allow the user to either click or use the arrow keys to select a square and hit enter.
 
Whether user is an X or an O should be determined at the beginning of the game, so that the user merely needs to select the square.
	I think the way to do this is to create X and O as classes? 
 
 I also need a way to output an image file (draw?) on the coordinate the user selected (for example A2, or C3).
 
 Can the dimensions of the regions be predefined, so that the regions can later merely be named/called? 
 	(maybe something like, def regions(40,40,0), regions_array[a1,a2,a3,b1,b2,b3,c1,c2,c3])?
 
 Also looking for a way to have the computer randomly select a square on it's own turn. I need a turn rotation mechanism. 


=end 


