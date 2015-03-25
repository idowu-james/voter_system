['lib/prompts'].each {|file| require file}

class Validator

	attr_reader :input, :message, :message_index, :voter
	

	def get_input
		input = gets.chomp.downcase.strip
		check(input)
	end

	def params(value1, value2, value3)
		@message = value1
		@message_index = value2
		@voter = value3
	end

	def check(value)
		case value
		when "1"
			if @message_index == "initMessage"
				@prompts = Prompts.new(@message,@message_index)
				@prompts.registration
				save_prompt
			else
				puts @message
				get_input
			end
		when "2"
			# run vote class 
			if @message_index == "initMessage"
				
			else
				puts @message
				get_input
			end

		when "3"
			# quit 
			if @message_index == "initMessage"
				puts "Thank you and good bye"
			else
				puts @message
				get_input
			end
		#when "s"
		#	if @message_index == "saveMessage"
		#		puts "*** Saving... ***"
				#@voter.save
		#	else
		#		puts @message
		#		get_input
		#	end
		when  "c"
			if @message_index == "saveMessage"
				puts "Would like to Vote? (Y / N)"
				#voter class will be called here.
			else
				puts @message
				get_input
			end
		when "r"
			if @message_index == "repeatMessage"
				puts "Please provide the following information below."
				print "Enter Your First Name: "
				@voter.first_name = gets.chomp.capitalize.strip
				print "Enter Your Last Name: "
				@voter.last_name = gets.chomp.capitalize.strip
				print "Enter Your Address: "
				@voter.address = gets.chomp.capitalize.strip
				puts "You entered:"
				puts "First name: " + @voter.first_name + "\n" + "Last name: " + @voter.last_name + "\n" + "Address: " + @voter.address
				save_prompt
			else
				puts @message
				get_input
			end
		else
			puts @message
			get_input
		end
	end

	def save_prompt
		@message_index = "repeatMessage"
		@message = "Please enter 'R' to Repeat the Registration or 'C' to Complete Registration."
		puts "Enter 'R' to Repeat the Registration or 'C' to Complete Registration."
		get_input
	end
end