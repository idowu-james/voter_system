['lib/register', 'lib/validator'].each {|file| require file}

class Prompter

	@@voter
	@@message = "Please enter '1' to REGISTER or '2' to VOTE or '3' to QUIT."
	@@message_index = "initMessage"

	def initialize
		introduction
		@@voter = Register.new("db/voter_register.txt")
		validate = Validator.new
		validate.params(@@message, @@message_index, @@voter)
		validate.get_input
	end

	def introduction
		puts "*** Loading... ***"
		puts "Welcome to the Voter System.\nEnter '1' to REGISTER or '2' to VOTE or '3' to QUIT."
	end
end
