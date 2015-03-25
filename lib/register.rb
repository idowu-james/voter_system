class Register

	@@file
	@@filepath
	attr_accessor :first_name, :last_name, :address, :register

	def initialize(path=nil)
		@register = []
		@@filepath = File.join(APP_ROOT, path)
		if file_check 
			@@file = File.open(@@filepath, "a+")
			puts "Voters register database found and loaded."
		else
			# creates directory 'db' if it doesn't exist
			Dir.mkdir('db') unless File.exists?('db')
			@@file = File.new(@@filepath, "a+")
			puts "Voter register created."
		end
	end

	#def save()
	#	@@file.puts "#{[@first_name, @last_name, @address].join("\t")}\n"
	#	update_register
	#end

	def file_check
		# checks if file exists and returns true or false
		if @@filepath && File::exists?(@@filepath) && File.readable?(@@filepath) && File.writable?(@@filepath) 
	    	return true
	    else
	    	return false
	    end
	end

	#def update_register
	#	@@file.each_line do |line|
	#		@register << line.chomp
	#	end
	#	puts @register
	#end

end