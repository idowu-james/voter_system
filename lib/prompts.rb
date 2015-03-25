require "lib/validator"

class Prompts

   @message_index 
   @message
   @voter
	
	def initialize(message,message_index)
		@message_index = message_index
		@message = message
	end

	def registration
		puts "Please provide the following information below."
				print "Enter Your First Name: "
				@voter.first_name = gets.chomp.capitalize.strip
				print "Enter Your Last Name: "
				@voter.last_name = gets.chomp.capitalize.strip
				print "Enter Your Address: "
				@voter.address = gets.chomp.capitalize.strip
				puts "You entered:"
				puts "First name: " + @voter.first_name + "\n" + "Last name: " + @voter.last_name + "\n" + "Address: " + @voter.address
	end
	
end